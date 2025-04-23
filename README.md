# ☘️ GARDEN DIARY ☘️

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview

### Description

A garden tracker app is a companion for gardeners, providing a wealth of information about various vegetables, allowing users to monitor the growth process of plants in their own gardens, and calculating the estimated time until harvest. The app enables personalized tracking through note-taking on each vegetable type being cultivated, while also featuring an educational resource that details common garden pests and offers guidance on how to manage them, creating a comprehensive tool for both planning and maintaining a successful vegetable garden.

### App Evaluation

- **Category:** Productivity/Lifestyle (Gardening)
- **Mobile:** Mobile is essential for on-the-go access in the garden to log observations, check information, and receive timely notifications about plant progress and potential issues. The camera could be used for photo documentation of plant growth, pest identification, and sharing progress. Location services could potentially be used for localized planting calendars or weather-related advice.
- **Story:** Empowers gardeners of all levels to cultivate thriving vegetable gardens by providing readily available information, personalized tracking, and proactive guidance. It transforms gardening from a potentially confusing endeavor into a more informed, organized, and rewarding experience, leading to more successful harvests and a deeper understanding of plant care.
- **Market:** Home gardeners of all experience levels, community garden participants, and even small-scale urban farmers could benefit from this app. Monetization could involve premium features like advanced analytics, personalized planting schedules based on location and last frost dates, expanded pest and disease identification with AI image recognition, or partnerships with local nurseries and seed suppliers.
- **Habit:** Gardeners would likely use this app regularly, especially during key gardening seasons. Daily or weekly use for logging plant progress, checking harvest dates, and reviewing pest information would be common. Notifications for watering, fertilizing, or potential pest outbreaks would encourage consistent engagement.
- **Scope:** V1 would focus on providing a vegetable information database with basic growth tracking and note-taking features. A real gardener with a small garden could test this. V2 would incorporate the harvest date calculation and basic pest information. V3 would add image capture for plant documentation and potentially basic reminders. V4 would integrate location-based features and explore more advanced pest/disease identification or community sharing of gardening tips.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can view basic information about different kinds of vegetables
* User can have access to basic information about pests
* User can add a new vegetable to their garden
* User can view a list of vegetables currently in their garden
* User can record a growth update for a specific vegetable
* User can see the estimated countdown until the harvest date for each vegetable

**Optional Nice-to-have Stories**

* User can receive notifications for upcoming tasks (e.g., watering reminders, estimated harvest approaching)
* User can identify potential pests based on photos or descriptions and get basic information/solutions
* User can search the vegetable information database by keyword (e.g., "tomatoes," "root vegetables")
* User can enable location services to personalize the app experience
* User can view general gardening tips relevant to their detected location and current season
* User can share gardening tips or ask for advice with other users in their general vicinity

### 2. Screen Archetypes

- [ ] Vegetables Screen
* User can view a list of vegetables with parts of their description
* User can search the vegetable information by keyword
- [ ] Vegetable Details Screen
* User can see information related to the gardening process of selected vegetable
* User can add the selected vegetable to the My Garden tab
- [ ] My Garden Screen
* User can view a list of added vegetables along with the countdown until harvest date
* User can delete the vegetable that they want out of the My Garden tab
- [ ] Vegetable Notes Screen
* User can view a list of notes about the selected vegetables the have added before
* User can add notes for the selected vegetable from My Garen tab
* User can delete a specific notes that they don't need anymore
- [ ] Pests Screen
* User can view a list of pests you might face when growing vegetables
* User can search the pest information by keyword
- [ ] Pest Details Screen
* User can see information related to the selected pests

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Vegetables Screen
* My Garden Screen
* Pests Screen

**Flow Navigation** (Screen to Screen)

- [ ] Vegetabels Screen => Vegetable Details Screen
- [ ] My Garden Screen => Vegetable Notes Screen
- [ ] Pests Screen => Pest Details Screen

## Wireframes

<img src="https://media-hosting.imagekit.io/e51e54e90cf146e4/IMG_0175.PNG?Expires=1839993491&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=C-uBcp3Cp1ZSNXu9wfecWKl~wqSRgVtHgBFKWGZoZ4x88qq2W5VqEcSixsPouEYI0nhAdY~ZPDY12JmkWVWsgbgw4xAsQkzrsOUyg3UgIhlsenRC1eQ5WUKfcdbciVeUMEiRpfO-MSoE9lN1NkOLOmfMG0IUYcfVq9gDb8KeBxh7TqbSe48hlvBvEAyB48HejCom0PElthUOYr9tkWuWCecnjNIub1FBMJs-Db9tQcFlwGmkXphPB1M~mfpjLL9m~tJvqUS6nysfysdO4shlGh5udBxmyxbKPlaIA4Jt4c79Es8kTMgpqSc8Y36KiSHAISVU3ffd3HsfL84tgrXZTQ__" width=600>

## Schema 

### Models

#### Vegetable
| Property      | Type     | Description |
| ------------- | -------- | ----------- |
| vegetableCode | String   | unique identifier for the vegetable |
| name          | String   | vegetable's name |
| body          | String   | brief description of the vegetable|
| thumbnailImage| URL      | vegetable thumbnail image |
| seedDepth     | String   | recommended planting depth for the seeds |
| germinationSoilTemp     | String   | optimal soil temperature for seed germination |
| daysToGermination     | Integer   | number of days it typically takes for seeds to germinate |
| sowIndoors     | String   | recommendations for starting seeds indoors |
| sowOutdoors     | String   | ecommendations for starting seeds outdoors |
| phRange     | String   | ideal pH range for the soil the vegetable grows best in |
| growingSoilTemp     | String   | optimal soil temperature for the vegetable to grow |
| spacingBeds    | String   | recommended spacing between plants when planting in beds |
| watering    | String   | general guidelines for watering the vegetable |
| light    | String   | amount of sunlight the vegetable requires |
| goodCompanions     | String   | a list of plants that grow well alongside this vegetable |
| badCompanions    | String   | a list of plants that do not grow well alongside this vegetable | 
| sowingDescription   | String   | more detailed description of the sowing process |
| growingDescription     | String   | detailed description of how to grow the vegetable | 
| harvestDescription     | String   | description of when and how to harvest the vegetable | 
| active     | Boolean   | indicates whether the vegetable entry is currently active or available |
| season     | String   | a list of seasons when this vegetable typically grows or is available |
| daysToHarvestSeeds     | Integer   | number of days from planting to when seeds can be harvested from the plant |
| daysToHarvestSeddlings     | Integer   | number of days from planting to when the vegetable is typically ready for harvest as seedlings |
| healthBenefits     | String   | summary of the health benefits associated with consuming this vegetable |
| pests    | Array   | an array of Pest objects associated with this vegetable |

### Networking

#### Basic Network Request Example
```swift
func fetchVegetables() {
    let url = URL(string: "https://azamsharp.com/vegetables.json")!
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            print("Error fetching vegetables: \(error)")
            return
        }
        guard let data = data else {
            print("No vegetable data received")
            return
        }
        do {
            let vegetables = try JSONDecoder().decode([Vegetable].self, from: data)
            DispatchQueue.main.async {
                print("Successfully fetched and (potentially) updated vegetables.")
            }
        } catch {
            print("Error decoding vegetable JSON: \(error)")
        }
    }
    task.resume()
}
```
#### List of API Endpoints
##### Vegetable API
- Base URL - [https://azamsharp.com/vegetables.json](https://azamsharp.com/vegetables.json)

| HTTP Verb | Endpoint | Description |
| --------- | -------- | ----------- |
| `GET`     | /vegetables | Get a list of vegetable details |
