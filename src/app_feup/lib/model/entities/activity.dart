//Stores information about an activity
class Activity {
  String course;
  String description;
  DateTime start;
  DateTime end;

  Activity(String course, String description, DateTime start, DateTime end){
    this.course = course;
    this.description = description;
    this.start = start;
    this.end = end;
  }

  String getCourse() {
      return this.course;
  }

  String getDescription() {
      return this.description;
  }
  
  DateTime getStart() {
      return this.start;
  }

  DateTime getEnd() {
      return this.end;
  }

  bool isOccuring() {
    final DateTime now = DateTime.now();
    return !(now.isBefore(this.start) || now.isAfter(this.end));
  }

  bool isFuture(){
    return DateTime.now().isBefore(this.start);
  } 
}