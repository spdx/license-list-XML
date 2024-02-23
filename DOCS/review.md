# Tips for reviewing submitted licenses

## If it has a `used in major distro` label
These are generally easier to review, especially if you are just starting out. 

The `used in a major distro` label indicates that 1) the license has been found in either Fedora or Debian, and therefore meets the [Fedora](https://docs.fedoraproject.org/en-US/legal/license-approval/) or [Debian](https://www.debian.org/social_contract#guidelines) free/open license criteria. This means that the question of eligibility for inclusion on the SPDX License List mostly settled (see LINK for more on this). 

The key remaining things to check are:

### If no one else has reviewed, follow these steps:
1. Check to see if the license is similar to a license already on the SPDX License List. See LINK for tips on this.
2. If it is not, then consider an appropriate id for the new license
3. If it is similar to an existing license, see LINK TO SECTION ON MARKUP

### If it has already been reviewed by one person
At this point, as per our process guidance, only one other person needs to review to finalize acceptance to the SPDX License List. If someone has already done the initial review as described in the section above, then as the second reviewer, you need to confirm their findings and express your agreement or disagreement (and why).



(keeping this until I figure out where to put it elsewhere) As relates to the [SPDX license inclusion principles](license-inclusion-principles.md) - the combination of the license being in a major distro (e.g., Fedora 
 or Debian) and the nature of the Fedora and Debian license criteria means that the license already meets two of the most important factors for inclusion on the SPDX License List: it is an open source license and it has substantial use. 
Note: if there is a link to the Fedora license data Gitlab repo, then you can check to see the license has been marked as "allowed" for Fedora. However, generally speaking, Fedora maintainers won't submit to SPDX until it has been determined as "allowed" for Fedora.




## If it has a label of `XML markup change'  
to add

## If it is a new license request, but not `used in a major distro`
to add
