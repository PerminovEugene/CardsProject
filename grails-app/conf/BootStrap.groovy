class BootStrap {
    def fixtureLoader
    def init = { servletContext ->
        fixtureLoader.load("dbFixtures")
    }
    def destroy = {
    }
}
