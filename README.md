# Project 4 - *Photo Scavenger Hunt*

Submitted by: **Aaron Jacob**

In **Photo Scavenger Hunt**, users engage in a scavenger hunt by finding items or places prompted by the app and uploading photos of them. It also shows a map view of where each uploaded photo was taken.

Time spent: **4** hours spent in total

## Required Features

The following **required** functionality is completed:

- [x] App displays list of hard-coded tasks
- [x] When a task is tapped it navigates the user to a task detail view
- [x] When user adds photo to complete the tasks, it marks the task as complete
- [x] When adding photo of task, the location is added
- [x] User returns to home page (list of tasks) and the status of your task is updated to complete
 
The following **optional** features are implemented:

- [ ] User can launch camera to snap a picture	

## Video Walkthrough

Here's a walkthrough of implemented user stories:

[Imgur](https://imgur.com/W676vnZ)

GIF created with [Kap](https://getkap.co/) for macOS.

## Notes

Getting the custom annotation view for the map view on the task detail view took some time. I realized that I implemented the `mapView(_:viewFor:)` delegate method header in the task detail view's view controller incorrectly and made the necessary fixes to this problem.

## License

    Copyright 2023 Aaron Jacob

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
