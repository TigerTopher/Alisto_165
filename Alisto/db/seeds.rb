# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Populate users...
User.create(fname: "Christopher", lname: "Vizcarra", username: "cnvizcarra", email: "christov9999@example.com", password: "hullobeh", password_confirmation:"hullobeh", reports_issued: 0)
User.create(fname: "Rianna", lname: "Dela Cruz", username: "rccruz", email: "cutenitoph@example.com", password: "tophmyloves", password_confirmation:"tophmyloves", reports_issued: 0)
User.create(fname: "Kobe", lname: "Bryant", username: "KobeKobez", email: "kobe@gmail.com", password: "jordanisweak", password_confirmation:"jordanisweak", reports_issued: 0)
User.create(fname: "Ivan", lname: "Macababayao", username: "ivanmacabs", email: "ivanmacabs@example.com", password: "lolomopraning", password_confirmation:"lolomopraning", reports_issued: 0)
User.create(fname: "Tony", lname: "Parker", username: "tparker", email: "tonyparker@spurs.com", password: "spurs143", password_confirmation:"spurs143", reports_issued: 0)
User.create(fname: "John", lname: "Cena", username: "johncena", email: "jc@example.com", password: "youcantseeme", password_confirmation:"youcantseeme", reports_issued: 0)
User.create(fname: "Michael", lname: "Villar", username: "michaelv", email: "mv@example.com", password: "qaws1q2w", password_confirmation:"qaws1q2w", reports_issued: 0)

# Populate Anonymous Reports
AnonReport.create(title:"I felt nabastos", coordinate_x: 121.071148, coordinate_y: 14.656133, short_desc:"May nangbastos sa akin na dalawang kalalakihan.", classification_id: 1, date_issued: DateTime.now(), full_report: "Nung papunta ako sa Melchor, may dalawang lalaki na joggers ata sila na nangbastos sa akin. Sabi nila pangit daw ako pero maganda katawan. Hipon daw. Sana laging may UP SSB malapit sa oval. Madilim kasi sa side ng Engg.")
AnonReport.create(title:"Nanakawan ako", coordinate_x: 14.658541, coordinate_y: 121.067064, short_desc:"Nanakawan ako malapit sa Area 2. Balagtas street ser.", classification_id: 8, date_issued: DateTime.now(), full_report: "Umihi lang ako saglit ser. Sigurado po ako salisi gang iyon")
AnonReport.create(title:"DCS: Naholdap ako sir!", coordinate_x: 14.650060, coordinate_y: 121.068575, short_desc:"Naholdap po ako sa entrance ng DCS", classification_id: 11, date_issued: DateTime.now(), full_report: "Nakita ko po. May limang sumunod sa akin. Naka DCS shirt po sila. Sila na po ata yung DCS holdappers. Tinutukan po ako ng keyboard at sinabing magkakacomputer virus daw ako. Ayun. Sumunod na lang ako para safe.")
AnonReport.create(title:"Na-laglag bala po ako", coordinate_x: 14.654648, coordinate_y: 121.062359, short_desc:"Nakasakay ako sa UP jeep. May naglagay ng bala sa bag ko.", classification_id: 3, date_issued: DateTime.now(), full_report: "Nahulihan ako ng guard na may bala sa bag ko. Mga 18 na pala. Nalagyan kasi ako nung nasa CP Garcia pa lang banda yung Jeep.")
AnonReport.create(title:"Attempted Rape sa akin", coordinate_x: 14.649739, coordinate_y: 121.064194, short_desc:"Muntik na ako marape sa likod ng UP Bonsai Garden", classification_id: 9, date_issued: DateTime.now(), full_report: "Muntik na ako marape sa likod ng up bonzai garden. Buti na lang dumating sa manong guard. Niligtas ako. Naalala ko pa mukha niya. Sana po maayos yung ilaw dito malapit.")
AnonReport.create(title:"Upcoming Frat War", coordinate_x: 14.659364, coordinate_y: 121.074076, short_desc:"Magkakafratwar bukas ng gabi", classification_id: 2, date_issued: DateTime.now(), full_report: "Magkakafratwar sa likod ng Ilang-Ilang. Kagagawan ito ng SXY Frat. Di ko na sasabihin yung isa. Maraming mamamatay.")
AnonReport.create(title:"Binentahan ako DoDo Bird", coordinate_x: 14.657606, coordinate_y: 121.064917, short_desc: "May bentahan ng exotic animals dito.", classification_id: 5, date_issued: DateTime.now(), full_report: "Sa likod ng UP college of music, may bentahan ng exotic animals.")
AnonReport.create(title:"Witness Drug Pushing", coordinate_x: 14.654912, coordinate_y: 121.066328, short_desc:"Inofferan ako ng kaibigan ko ng drugs dito.", classification_id: 6, date_issued: DateTime.now(), full_report: "Talamak na dito sa pagitan ng Osmena at Roxas Ave ang bentahan ng drugs. Regular sila dito every Monday at Thursday.")
AnonReport.create(title:"Nabudol-budol ako :(((", coordinate_x: 14.651809, coordinate_y: 121.072612, short_desc:"Nabudol-budol/Hypnotize ako nung papunta ako sa Physics ng hapon.", classification_id: 7, date_issued: DateTime.now(), full_report: "Nabudol-budol/Hypnotize ako nung papunta ako sa Physics ng hapon. Nakuhanan ako ng iPhone 6. Napicutran ko yung lalaki pero nasa phone ko. Badtrip. Nakablue siya at mukhang barangay tanod.")
AnonReport.create(title:"Vandalism sa Melchor", coordinate_x: 14.656829, coordinate_y: 121.068816 , short_desc:"May nagdrawing ng malaking hotdog sa pader ng Hydraulics Building.", classification_id: 4, date_issued: DateTime.now(), full_report: "May nagdrawing ng malaking hotdog sa pader ng Hydraulics Building. Lima sila. Karamihan ay mga bata. Payat sila lahat at maingay. Walang ilaw doon banda kaya hindi sila agarang nahuhuli.")
AnonReport.create(title:"May Frat War kanina", coordinate_x: 14.653183, coordinate_y: 121.070726, short_desc:"May frat war kanina sa harap ng dating CASAA.", classification_id: 2, date_issued: DateTime.now(), full_report: "May 40 minutes riot na nangyari sa harap ng dating CASAA. Sila'y parte ng SXY fraternity. May isang lalaki doong duguan ng akin namalayan.")
AnonReport.create(title:"Naholdapan ako", coordinate_x: 14.657780, coordinate_y: 121.060192, short_desc:"Naholdapan ako malapit sa Commision on Human Rights", classification_id: 1, date_issued: DateTime.now(), full_report: "Naholdapan ako malapit sa Commision on Human Rights. Di ko nakilala kung sino sila basta may dalang balisong.")
AnonReport.create(title:"Binentahan po ako ng Pikachu", coordinate_x: 14.658477, coordinate_y: 121.072647, short_desc:"May bentahang kakaiba malapit sa Bazaar.", classification_id: 5, date_issued: DateTime.now(), full_report: "Binentahan ako ng exotic animal na ang codename ay Pikachu. Ito ay isang malaking sawa. Para makapasok sa Bazaar, ang magic word nila ay Gooldeeen. Kapag nabanggit iyon, saka papakita ng isang stall doon ang kanilang collection. Nagkakahalaga itong 40 thousand pesos pataas")
AnonReport.create(title:"FC Landbank, nanakawan ako", coordinate_x: 14.653181, coordinate_y: 121.068434, short_desc:"Sa landbank sa may FC may nangholdap sa akin pagkatapos", classification_id: 11 , date_issued: DateTime.now(), full_report: "May nagholdap sa akin pagkatapos ko magwithdraw. NakaDCS shirts sila. Tatlong lalaki.")
AnonReport.create(title:"I'm followed", coordinate_x: 14.651505, coordinate_y: 121.068511, short_desc:"Kanina pa may sumusunod sa akin.", classification_id: 1, date_issued: DateTime.now(), full_report: "Kanina pang nasa UP Lagoon. May sumusunod sa akin na lalaki. Mukhang estudyante. Tintry ko umikot-ikot pero wala alam kong sinusundan niya ako. Sa tulong ng guard sa ITDC, napaalis namin yung lalaki. Sana lang guni-guni ko ito.")

# Populate Classification
Classification.create(crime_name: "Unclassified", crime_details: "Report is currently unclassified", syndicate_id: 1)
Classification.create(crime_name: "Frat-related Incidents (SXY)", crime_details: "Crimes such as frat wars.", syndicate_id: 2)
Classification.create(crime_name: "Scammed UP Ikot", crime_details: "UP students biktima ng laglag bala malapit sa checkpoint", syndicate_id: 4)
Classification.create(crime_name: "Breach and Vandalism", crime_details: "Both refers to breaching into buildings in UP and vandalizing", syndicate_id: 5)
Classification.create(crime_name: "Selling of Exotic Animals", crime_details: "This breaks the law of the Endangered Species Act which prohibits the possession, selling, delivering, carrying, transporting, importing, exporting, or shipping of any endangered species of fish or wildlife.", syndicate_id: 6)
Classification.create(crime_name: "Drug Pushing", crime_details: "Selling of illicit drugs around the campus.", syndicate_id: 7)
Classification.create(crime_name: "Hypnotizing Scam", crime_details: "Scams wherein individuals talk to their victims to win their trust. Afterwards, they are scammed into giving up their valuables.", syndicate_id: 8)
Classification.create(crime_name: "Stealing", crime_details: "Taking (another person's property) without permission or legal right and without intending to return it.", syndicate_id: 5)
Classification.create(crime_name: "Rape", crime_details: "The crime of using force or the threat of force to compel a person to submit to sexual intercourse. This happens both to males and females. Crimes like these happen most of the time around 1 am.", syndicate_id: 1)
Classification.create(crime_name: "Murder", crime_details: "The unlawful premeditated killing of one human being by another. Crimes of this type happens 1% of the time inside the campus.", syndicate_id: 1)
Classification.create(crime_name: "Holdap", crime_details: "A robbery conducted with the use of threats or violence.", syndicate_id: 3)

# Populate Syndicates / Groups

Syndicate.create(name: "Unknown", overview: "There are currently no data about the syndicate or group behind this.", report_count: 4)
Syndicate.create(name: "SXY Frat", overview: "This is a notorious fraternity that are mostly UP Engineering students. Reports were usually harrassing old people and breaking things around the campus..", report_count: 2)
Syndicate.create(name: "DCS Holdappers", overview: "This is a  Reports were usually holdapping UP students near Department of Computer Science.", report_count: 3)
Syndicate.create(name: "Laglag Bala Gang", overview: "This is notorious gang that plants bullets on jeepneys as they enter UP checkpoint.", report_count: 1)
Syndicate.create(name: "Salisi sa UP Gang", overview: "They dress up looking as students and professors to get entry to UP buildings. Once granted access inside the building, they steal things left by students", report_count: 2)
Syndicate.create(name: "Team Rocket", overview: "This is just a fresh syndicate that sells exotic animals inside UP.", report_count: 2)
Syndicate.create(name: "Roller-coaster Gang", overview: "These are young individuals that can be seen walking around the Academic Oval eating chips. But in actuality, drugs are hidden inside the chips container. They sell it around UP at night.", report_count: 1)
Syndicate.create(name: "Budol-Budol Gang", overview: "These gang has been notorious especially in the Physics Area. They talk to their victims in a friendly manner. Once they get your trust, then they can get your valuables. It's as if you were hypnotized.", report_count: 1)