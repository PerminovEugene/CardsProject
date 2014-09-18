import grails.util.Environment

class BootStrap {
    def fixtureLoader
    def init = { servletContext ->
        if (Environment.current != Environment.PRODUCTION) {
            fixtureLoader.load("dbFixtures")
        }
    }
    def destroy = {
    }
}
