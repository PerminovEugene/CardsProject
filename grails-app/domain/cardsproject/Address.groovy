package cardsproject

class Address {

    String city
    String street
    int house
    String housing
    String office
    int postCode

//    static hasMany = [company: Company]

    static constraints = {
        city(blank: true, minSize: 1)
        street()
        house()
        housing()
        office()
        postCode()
    }
}
