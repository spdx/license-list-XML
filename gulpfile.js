/**
 * Gulpfile for validating SPDX license XML files
 * Script licensed under SPDX-License-Identifier: MIT
 */

var gulp = require('gulp'),
	xsd = require('libxml-xsd'),
	glob = require('glob'),
	gutil = require('gulp-util'),
	fs = require('fs'),
	srcdir = "src",
	xsdlocation = "schema/ListedLicense.xsd",
	schemaString = fs.readFileSync(xsdlocation, 'utf8'),
	schema = xsd.parse(schemaString),
	MAX_FILE_SIZE = 32766;

/**
 * Validates a files against the XSD
 * @param file
 * @param error error if any error occurs
 * @returns Error if any error occurs, otherwise returns null
 */
function validate(file) {

	if (file) {
		if (file.size > MAX_FILE_SIZE) {
			return new Error("File is too large for validation.  Size is "+file.size,file.name);
		}
		var documentString = fs.readFileSync(file, 'utf8');
		var validationErrors = schema.validate(documentString);
		if (validationErrors) {
			var errormsg = null;
			validationErrors.forEach(function(error) {
				if (errormsg) {
					errormsg += ';';
					errormsg += ' at line ' + error.line + ' ' + error.message;
				} else {
					errormsg = ' at line ' + error.line + ' ' + error.message;
				}
				console.log('Validation error(s) for file '+file+':'+error);
			});
			return new Error("File "+file+" "+errormsg);
		} else {
			return null;	// no errors
		}
	}
}

function validateall(callback) {
	glob('./'+srcdir+'/**/*.xml', function(err, files) {
		if (!files) {
			return;
		}
		var error = null;
		files.forEach(function(file) {
			var fileError = validate(file, fileError);
			if (fileError) {
				if (!error) {
					error = fileError;
				} else {
					// append the file in error
					error = new Error(error.message+fileError.message);
				}
			}
		});
		if (error) {
			gutil.log(error.message);
			callback(error);
		}
	});
}

gulp.task('validate', function(callback) {
	validateall(callback);
});

gulp.task('default', ['validate']);

// Comment the following out - just used for testing
validateall(function(error) {
	if (error) {
		console.log(error.message);
	}
});
console.log('done');