# REST API Tests for Trello API

## Overview

This project contains automated REST API tests for Trello API, built using Postman and integrated with GitHub Actions. The tests cover key CRUD (Create, Read, Update, Delete) operations for Trello API resources such as boards, lists, and cards. The project uses Docker for containerization and Allure to generate and visualize test reports. In addition to automated tests, the project also contains manual REST API tests that can be executed in Postman to verify API functionality. Test scope based on Trello API documentation.

## Features

- **Authorization:** Tests for correct authorization using API key and token.

- **CRUD operations on boards:**
- **GET:** Fetching a list of boards.
- **POST:** Creating a new board.
- **PUT/PATCH:** Updating board information.
- **DELETE:** Deleting a table.

- **CRUD operations on lists:**
- **GET:** Retrieving lists from a table.
- **POST:** Creating a new list on a table.
- **PUT/PATCH:** Updating the content of a list.
- **DELETE:** Deleting a list.

- **CRUD operations on cards:**
- **GET:** Retrieving cards from a table.
- **POST:** Creating a new card on a table.
- **PUT/PATCH:** Updating the content of a card.
- **DELETE:** Deleting a card.

- **Integration with GitHub Actions:** Automates running tests and generating Allure reports.

- **Docker containerization:** Allows easy running of tests in an isolated environment.

- **Allure Reporting:** Generate detailed test reports with visualization of results.

## Requirements

- **Node.js**

- **Docker**

- **Newman**

- **Allure CLI**

- **Postman**

## Prepare Environment

1. Clone repository: `git clone https://github.com/Wojciech-Podlesny/Trello-REST-API-Test-Automation.git`

2. Install requirements:

- Node.js

- Install dependencies from `package.json`

```
npm install
```

### Getting started

- Create Trello Power-Up

Trello uses a delegated _authentication and authorization_ flow, which means no usernames or passwords are used. Instead, you need to generate an API key to get started. To do this, you first need to create a **Trello Power-Up**. In that case, please refer to the [Power-Up Management Documentation](https://developer.atlassian.com/cloud/trello/guides/power-ups/managing-power-ups/#adding-a-new-custom-power-up).

- Generate a new API key

Once you have created your Power-Up, you can generate a new **API key**, which will be visible in the left sidebar of the page.

- Generate an access token

On the same page where you found your API key, you can see a **Token** hyperlink, also known as Secret, on the right side. Follow the instructions in the [Authentication and Authorization section](https://developer.atlassian.com/cloud/trello/guides/rest-api/api-introduction/#authentication-and-authorization).

- Setting up the `environment.json` file

Once you have your API key and access token, you need to set up your own configuration file in Postman.

- Open Postman.
- Create a new environment:
- Click on “Environments” in the top left corner of the Postman app.
- Select “New Environment” and give it a name (e.g. “Trello Prod”).
- Add two variables: `key` and `token`.
- Enter your API key and token values ​​in the appropriate fields.
- Export the environment:

Once you have created the environment, click on the “…” icon to open the options and select “Export”. Select the JSON format and save the file as `environment.json`.
- Place the file in the `tests` folder

### Docker Configuration:

Create an `.env` file in the project root, then add your variables:

```
TRELLO_API_KEY=your_api_key
TRELLO_TOKEN=your_token
```

## Running Tests

With Docker

Build the Docker image:

```
docker build -t trello-testing
```

Run the Docker container:

```
docker run --env-file .env trello-testing
```

Without Docker

Run Newman tests

```
npm run test
```

Generate the Allure report:

```
npm run allure
```

View the Allure report:

```
npm run serve
```
