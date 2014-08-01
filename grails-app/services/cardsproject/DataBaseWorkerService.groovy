package cardsproject

import grails.transaction.Transactional

@Transactional
class DataBaseWorkerService {

    def fixtureLoader

    def startService()
    {
        fixtureLoader.load("dbFixtures")
    }

    def serviceMethod() {

    }
}
