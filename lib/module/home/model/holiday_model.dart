class HolidayModel {
  final String date;
  final String holidayName;
  final String day;
  final bool isDone;

  HolidayModel({
    required this.date,
    required this.holidayName,
    required this.day,
    required this.isDone,
  });
}
final List<HolidayModel> holidayList = [
  HolidayModel(date: "January 01, 2025", holidayName: "New Year's Day", day: "Wednesday",isDone: true),
  HolidayModel(date: "January 14, 2025", holidayName: "Makar Sankranti", day: "Tuesday",isDone: true),
  HolidayModel(date: "January 26, 2025", holidayName: "Republic Day", day: "Sunday",isDone: true),

  HolidayModel(date: "February 14, 2025", holidayName: "Vasant Panchami", day: "Friday",isDone: true),
  HolidayModel(date: "February 26, 2025", holidayName: "Guru Ravidas Jayanti", day: "Wednesday",isDone: true),

  HolidayModel(date: "March 17, 2025", holidayName: "Holi", day: "Monday",isDone: true),
  HolidayModel(date: "March 21, 2025", holidayName: "Good Friday", day: "Friday",isDone: true),
  HolidayModel(date: "March 29, 2025", holidayName: "Ram Navami", day: "Saturday",isDone: true),

  HolidayModel(date: "April 10, 2025", holidayName: "Eid-ul-Fitr", day: "Thursday",isDone: true),
  HolidayModel(date: "April 14, 2025", holidayName: "Ambedkar Jayanti", day: "Monday",isDone: true),
  HolidayModel(date: "April 18, 2025", holidayName: "Mahavir Jayanti", day: "Friday",isDone: true),

  HolidayModel(date: "May 01, 2025", holidayName: "Labour Day", day: "Thursday",isDone: true),
  HolidayModel(date: "May 23, 2025", holidayName: "Buddha Purnima", day: "Friday",isDone: true),

  HolidayModel(date: "June 05, 2025", holidayName: "Maharana Pratap Jayanti", day: "Thursday",isDone: false),
  HolidayModel(date: "June 17, 2025", holidayName: "Bakrid / Eid al-Adha", day: "Tuesday",isDone: false),

  HolidayModel(date: "July 06, 2025", holidayName: "Rath Yatra", day: "Sunday",isDone: false),

  HolidayModel(date: "August 15, 2025", holidayName: "Independence Day", day: "Friday",isDone: false),
  HolidayModel(date: "August 19, 2025", holidayName: "Raksha Bandhan", day: "Tuesday",isDone: false),
  HolidayModel(date: "August 27, 2025", holidayName: "Janmashtami", day: "Wednesday",isDone: false),

  HolidayModel(date: "September 02, 2025", holidayName: "Ganesh Chaturthi", day: "Tuesday",isDone: false),
  HolidayModel(date: "September 19, 2025", holidayName: "Anant Chaturdashi", day: "Friday",isDone: false),

  HolidayModel(date: "October 02, 2025", holidayName: "Gandhi Jayanti", day: "Thursday",isDone: false),
  HolidayModel(date: "October 19, 2025", holidayName: "Karva Chauth", day: "Sunday",isDone: false),
  HolidayModel(date: "October 21, 2025", holidayName: "Diwali", day: "Tuesday",isDone: false),
  HolidayModel(date: "October 22, 2025", holidayName: "Govardhan Puja", day: "Wednesday",isDone: false),
  HolidayModel(date: "October 23, 2025", holidayName: "Bhai Dooj", day: "Thursday",isDone: false),

  HolidayModel(date: "November 01, 2025", holidayName: "Kannada Rajyotsava", day: "Saturday",isDone: false),
  HolidayModel(date: "November 07, 2025", holidayName: "Chhath Puja", day: "Friday",isDone: false),
  HolidayModel(date: "November 20, 2025", holidayName: "Guru Nanak Jayanti", day: "Thursday",isDone: false),

  HolidayModel(date: "December 25, 2025", holidayName: "Christmas", day: "Thursday",isDone: false),
];
