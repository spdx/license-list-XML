# Tips for reviewing submitted licenses

## If it has a `used in major distro` label
These are generally easier to review, especially if you are just starting out. The `used in a major distro` label indicates that 1) the license has been found in either Fedora or Debian; and 2) the license meets the [Fedora](https://docs.fedoraproject.org/en-US/legal/license-approval/) or [Debian](https://www.debian.org/social_contract#guidelines) free/open license criteria. 

As relates to the [SPDX license inclusion principles](license-inclusion-principles.md) - the combination of the license being in a major distro (e.g., Fedora 
 or Debian) and the nature of the Fedora and Debian license criteria means that the license already meets two of the most important factors for inclusion on the SPDX License List: it is an open source license and it has substantial use. 
Note: if there is a link to the Fedora license data Gitlab repo, then you can check to see the license has been marked as "allowed" for Fedora. However, generally speaking, Fedora maintainers won't submit to SPDX until it has been determined as "allowed" for Fedora.

At this point, the issue of elgibility for inclusion is mostly settled. The key remaining things to check are:
- a general check of all of the above
- is it similar enough to a license already on the SPDX License List that could be accommodated with markup?
- if not, what is an appropriate id for this new license

## If it has a `used in a major distro` label and has already been reviewed by one person
At this point, as per our process guidance, only one other person needs to review to finalize acceptance to the SPDX License List. If someone has already done the initial review as described in the section above, then as the second reviewer, you need to confirm their findings and express your agreement or disagreement (and why).

## If it has a label of `XML markup change'  
to add

## If it is a new license request, but not `used in a major distro`
to add
