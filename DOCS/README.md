The files in this folder contains documentation important to understanding the SPDX License List, documentation explaining processes related, and templates to help the community collaborate and provide a standard interface for both reviewing and recording decisions on whether to include a license in the list.

## Understanding the SPDX License List

* [License fields](license-fields.md) - Explanation of the fields used on the SPDX License List
* [License inclusion principles](license-inclusion-principles.md) for adding new licenses or exceptions to the SPDX License List
* [FAQ](faq.md) - FAQ related to SPDX License List that is linked to from the SPDX.dev website

Also see [CONTRIBUTING](../CONTRIBUTING.md) for general information about contributing to the License List project.

## Process explanations

* [Request new license](request-new-license.md) - instructions for how to request a new license be reviewed for addition to the SPDX License List
* [New license workflow](./new-license-workflow.md) - the workflow for adding approved new licenses to the SPDX License List
* [XML template fields](./xml-fields.md) - describes the structure and fields for creating XML templates for licenses
* [Git usage](git-usage.md) - guidance for setting up and using Git on your own system to contribute to the SPDX License List on GitHub

## License submission templates

This folder includes two templates to help standardize the license review and decision process.

* [Submission response template](template-license-review-checklist.md) - a 'fill-in-the-blanks' template for responding to new license submissions
* [Submission decision template](template-decision.md) - template for use in logging license inclusion decisions in issues

### Submission response template

Anyone who feels qualified to do so is welcome to review [issues for new license submissions](https://github.com/spdx/license-list-XML/issues?q=is%3Aissue+is%3Aopen+label%3A%22new+license%2Fexception+request%22) by comparing it to the [license inclusion principles](./license-inclusion-principles.md). The submission response template ensures we have considered all of these principles when reviewing a license for inclusion in the list. 

To use the template:

1. Copy the contents of the [submission response template](template-license-review-checklist.md)
1. Paste that into a new comment on the issue
1. Edit the comment, ticking the appropriate boxes on the template. You can either save the comment and tick the boxes using your pointing device (mouse), or you can edit the markdown to tick the boxes by putting an `x` in between the brackets. For example:
```
- [ ] unticked
- [x] ticked
```
4. Add any additional comments you wish to include in your response.

### Submission decision template

The submission decision template gives us a standard way to record the community's decision on whether to include a license in the list.

To use the template:

1. Copy the contents of the [submission decision template](./template-decision.md)
1. Paste that into a new comment on the issue
1. Edit the comment, ticking the appropriate box for license acceptance and following the directions for providing additional information about the decision.
