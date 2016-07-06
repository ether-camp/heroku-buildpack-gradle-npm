Heroku buildpack: Gradle + NPM
=========================

Requirements:
- Backend (Java Gradle) in `backend` folder with `build.gradle`
- Frontend (NPM) in `frontend` folder with `package.json`

Executes following tasks:
- Install Node.js according to Frontend `package.json` engine settings
- Install NPM according to Frontend `package.json` engine settings
- Install dependencies according to Frontend `package.json`
- Executes build assets task in Frontend using `npm run build:prod`
- Install JDK for Backend
- Installs Gradle Wrapper for Backend if not provided
- Build app by running Gradle task `stage`
