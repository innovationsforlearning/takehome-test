# Take-home test: Flashcards

## Description

This is the start of a simple flashcards app designed to help early learners of English to identify some common English
phonics sounds.

The app has two components:

* a Rails-based API
* a React-based front-end

See [Installation](#installation) for instructions on setting up the app.

In its current state, the app requests a list of levels from the server and creates a dropdown list of levels. When a
level is selected, the app requests a list of flashcards for that level and displays them. Clicking on a flashcard
displays it in larger size underneath all the flashcards.

Along with the flashcard display are two buttons: **Needs Work** and **Got It**. These are not currently hooked up to
any functionality.

## Your tasks

### 1. Update the existing app

Implement the **Needs Work** and **Got It** buttons so that they record the user's response to the flashcard.

When the user clicks either of the buttons, the app should:

* Color the flashcard in the levels list according to the user's response (green for **Got It**, red for **Needs Work**).
* Send a request to the server to record the user's response.

The endpoint to update the server does not exist yet. Create one that records the user's response in the `status` field
of the relevant word part record.

When refreshing the page or selecting a different level, the app should correctly colour the user's responses in the
list of word parts.

### 2. Add new functionality

Add the ability to track study sessions, so users can see their progress over time.

When a user starts studying flashcards for a level, the app should record:

- When they started the session
- Which flashcards did they review
- Whether they clicked **Got It** or **Needs Work** for each flashcard
- When they finished the session

You will need to:

1. **Create the necessary database tables** to store study sessions and the flashcards reviewed in each session.

2. **Implement API endpoints** to:

   - Start a new study session for a level
   - Ensure that flashcard reviews are associated with the correct session
   - End a study session
   - Retrieve session details, including:
     - How long did the session last
     - How many flashcards were reviewed
     - What percentage were marked as Got It

3. Add appropriate validations to ensure data integrity.

4. Write tests for your models and endpoints.

**The React frontend does not need to be updated for this task.** Focus on building a robust API that could support a
future "Progress" page in the application.

## Installation

From the [repository's main page](https://github.com/innovationsforlearning/takehome-test), click the green
**Use this template** button and create a pristine copy of the repository in your own GitHub account.

Alternatively, you may use [this link](https://github.com/innovationsforlearning/takehome-test/archive/refs/heads/main.zip) 
to download a ZIP file of the repository.

**Please do not fork the repository.**

You will find the Rails API in the `server` directory and the React front-end in the `client` directory.

### Setting up the Rails app

```shell
$ cd server && bundle install && bin/setup
```

NB: The app's `.ruby-version` is currently set to Ruby 3.4.4. If you don't have this version installed, you can change
the `.ruby-version` file to a version you have installed.

### Setting up the React app

```shell
$ cd client && npm install
```

## Running the app

Both client and server apps will need to running for the app to work, e.g.:

```shell
# Rails
server$ bin/dev
# React
client$ npm run dev
```

# Submitting your work

Either:

* Upload your amended application to a public repository on your GitHub account; or
* Save it as a ZIP file, ensuring that the `.git` directory is included, and email it to your contact.

> [!NOTE]
>
> **Chapter One assessors:** Please refer to the [assessors' notes][an] on Google Drive.

[an]: https://docs.google.com/document/d/1lIdLigqrOOtEvvWsUbzplrFNRqDMNaPOp8wspphBEtc/edit?usp=sharing
