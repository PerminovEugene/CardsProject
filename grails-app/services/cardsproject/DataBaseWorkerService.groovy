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

    }/*
    def getNextPicture(picture_id)
    {
        Picture picture = Picture.get(picture_id)
        return picture
    }*/
}
