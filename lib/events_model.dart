class EventsModel {
  int id;
  String title;
  String category;
  String description;
  String dateCreated;
  String eventDate;
  String tagline;
  String mode;
  String externalLink;
  String speaker;
  String startingTime;
  List<int> organizer;

  EventsModel(
      {this.id,
      this.title,
      this.category,
      this.description,
      this.dateCreated,
      this.eventDate,
      this.tagline,
      this.mode,
      this.externalLink,
      this.speaker,
      this.startingTime,
      this.organizer});

  EventsModel.fromJson(List json) {
    id = json[0]['id'];
    title = json[0]['title'];
    category = json[0]['category'];
    description = json[0]['description'];
    dateCreated = json[0]['date_created'];
    eventDate = json[0]['event_date'];
    tagline = json[0]['tagline'];
    mode = json[0]['mode'];
    externalLink = json[0]['external_link'];
    speaker = json[0]['speaker'];
    startingTime = json[0]['starting_time'];
    organizer = json[0]['organizer'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['category'] = this.category;
    data['description'] = this.description;
    data['date_created'] = this.dateCreated;
    data['event_date'] = this.eventDate;
    data['tagline'] = this.tagline;
    data['mode'] = this.mode;
    data['external_link'] = this.externalLink;
    data['speaker'] = this.speaker;
    data['starting_time'] = this.startingTime;
    data['organizer'] = this.organizer;
    return data;
  }
}
