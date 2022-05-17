# Requirements

## Use case model

> TODO: Update
![](../images/UseCase.png)

|||
| --- | --- |
| *Name* | See UniCalendar |
| *Actor* |  UP Member | 
| *Description* | The UP member checks a calendar with upcoming activities through a dashboard on the main page. When the dashboard is clicked, a new page is brought up in which the user will have the possibility of filtering activities by course or exporting the calendar to multiple calendar apps. |
| *Preconditions* | - The UP member must have a UP account.<br>- The UP member must be registered to courses. |
| *Postconditions* | - [Optional] When exporting, the UP member gets the calendar as an ICS file. |
| *Normal flow* | 1. The UP member starts the UNI app.<br> 2. The UP member is presented with a dashboard on the main page showing upcoming activities.<br> 3. The UP member clicks the dashboard to expand it.<br> 4. If wanted, the UP member may filter the calendar by course.<br> 5. If wanted, the UP member can export the calendar to other extern app through an ICS file. |
| *Alternative flows and exceptions* | 1. [No activities] If in step 2 of the normal flow there aren't any exams or any other activity the dashboard displays a simple message stating the case.<br>2. Alternatively, in step 3 the UP member may expand the lateral panel of the app and click the "Activities" option.|

|||
|-|-|
| *Name* | View Dashboard in Home Page |
| *Actor* | UP Member |
| *Description* | TODO |
| *Preconditions* | TODO |
| *Postconditions* | TODO |
| *Normal flow* | TODO |
| *Alternative flows and exceptions* | TODO |

|||
|-|-|
| *Name* | Filter Activities by Course |
| *Actor* | UP Member |
| *Description* | The UP member |
| *Preconditions* | TODO |
| *Postconditions* | TODO |
| *Normal flow* | TODO |
| *Alternative flows and exceptions* | TODO |

### User stories
 - [As an UP member, I want to see a Activities calendar widget on the homescreen, so that I can quickly check if I'm keeping up with my deadlines.](https://github.com/LEIC-ES-2021-22/3LEIC03T3/issues/1)
 As an UP member, I want to see an Activities calendar page, so that I can check all my deadlines, filter them by date or course and export the activities calendar if I please.](https://github.com/LEIC-ES-2021-22/3LEIC03T3/issues/2)
 - [As an UP member, I want to be able to filter the calendar for ongoing and future activities by their course, so that I can better keep track of the deadlines.](https://github.com/LEIC-ES-2021-22/3LEIC03T3/issues/3)
 - [As an UP member, I want to click on the homescreen activities widget, so that I can go to the Activities page to check the complete list of activities, filter them by date or course and export the activities calendar if I please.](https://github.com/LEIC-ES-2021-22/3LEIC03T3/issues/4)
 - [As an UP member, I want to be able to export the activities calendar with the current filters applied to an external calendar application, so that I can easily synchronize with my everyday use calendar and manage my time more efficiently.](https://github.com/LEIC-ES-2021-22/3LEIC03T3/issues/5)
 - [As an UP member, I want to be able to access the activities page through a button on the application sidebar, so that I can go to the Activities page to check the complete list of activities, filter them by date or course and export the activities calendar if I please.](https://github.com/LEIC-ES-2021-22/3LEIC03T3/issues/6)

### Domain model

 <p align="center" justify="center">
  <img src="https://github.com/LEIC-ES-2021-22/3LEIC03T3/blob/main/images/DomainModeling.png"/>
</p>
pt
