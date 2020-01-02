# License Inclusion Principles


## Candidate License Analysis

Determining whether a candidate license should be included on the SPDX License List requires the SPDX Legal Team to engage in a case-by-case evaluation of each candidate license based on a number of factors. No one factor is dispositive and factors may weight differently. The ultimate decision will be based on the totality of the factors and SPDX's goals and objectives. Factors include:
* Does the license substantially comply with one of the open source definitions:
  * Open Source Definition (OSD) from the Open Source Initiative (OSI) - https://opensource.org/osd
  * Free Software Definition from the Free Software Foundation (FSF) - https://www.gnu.org/philosophy/free-sw.en.html
  * Open Source Hardware Definition from the Open Source Hardware Association (OSHWA) - https://www.oshwa.org/definition/
  * Open Definition from the Open Knowledge Foundation (for open data) - http://opendefinition.org/od/2.1/en/
  * Note: licenses that these organizations consider to meet their definition are presumptively appropriate for inclusion on the SPDX License List. Specifically, SPDX aims to ensure all OSI-approved licenses are included on the SPDX License List and have a short identifier, which is also used on the OSI website.
* Consider existing use of the license in wild (e.g., wide use of license or use of license in prominent projects)
* If it is a newly drafted license, it is drafted such that it can be used by anyone (e.g., it is not company-specific or a "vanity" license)
* Relevant input from the license steward (e.g., regarding name or if the license steward does not want the license added)
* Relevant open source community factors

Comments on license inclusion will be noted in the Github issue for the license (or reference to meeting minutes, as necessary). Some license requests may be decided solely via comments in the Github issue and some may involve discussion on the bi-weekly legal call. Thus it is recommended that requestors join the mailing list and calls to fully participate.


## Backstory
The first beta version of the SPDX License List was published in August 2010 and had approximately one hundred licenses on it. The initial set of licenses was included based on informal discussion and consensus on the SPDX working group calls and email list. Although various "guidelines" were identified in regards to which licenses to include or not during this time, formal guidelines were not recorded beyond the meeting minutes. We had to start somewhere, and the obvious was the easy beginning point. Decisions or guidelines that evolved out of discussion or by implication included the following:
* Include commonly found open source licenses. Although discussion was not explicit in regards to how to define an "open source license," this was always an implicit guiding principle
* Include all OSI approved licenses, both current and those approved but now deprecated. The rationale being that once OSI-approved, always OSI-approved and deprecated licenses still appear "in the wild"

At some point in these early days, there was consensus to include all of the Creative Commons licenses, even though the NC and ND do not fit the OSD. Other older licenses that were accepted on the list by consensus before we had formal inclusion guidelines may also fall under this "grand-licensed-in" reality.

Before long we recognized the need for a more formal process for requesting new licenses to be added to the SPDX License List. Such a process was discussed in terms of an ideal goal and pragmatic approach for the current reality (people sent an email to the mailing list). A process that bridged the former, with more weight on the latter was implemented in April 2012. 

In the waning days of 2012, we realized the need to make it clear and transparent to the world what criteria was being used to determine when to "accept" or "reject" a request to add a license to the SPDX License List. The result of those discussions was the publication of the license inclusion guidelines on the SPDX website in early 2013.

These guidelines served us well. But as time marches on and things evolve, we set out to consider a revision in 2019...

OLD COPY:
## Background Principles
The Software Package Data Exchange® (SPDX®) specification is a standard format for communicating, among other things, the components, licenses, and copyrights associated with open source software packages. Use of this standard streamlines license identification across the supply chain while reducing redundant work.

The goal of SPDX is not to evaluate licensing information or to provide legal interpretations. The only goal is to reliably and consistently communicate and share objective factual information so that organizations using software components will have the information necessary to conduct their independent analysis and evaluation. Establishing a consistent, reliable, and reusable way to communicate license information for software components will facilitate open source license compliance along the supply chain.

Although SPDX has traditionally focused on open source licensing, software may contain a mix of open-source licensed, commercially-licensed, freeware licensed, and other varieties of licensed software. Thus, it is feasible that a future version of the standard may develop a standardized method of identifying non-open source licenses contained within software packages.

Because the present focus of SPDX is the collection and presentation of the open-source software licenses contained in a software package, any license that is a candidate for inclusion on the SPDX License List must have the general attributes of an "open source" license.
