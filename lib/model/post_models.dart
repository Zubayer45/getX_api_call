class postModel{
    int? userId;
    int? id;
    String? title;
    String? content;

    postModel({
        this.userId,
        this.id,
        this.title,
        this.content
    });

    factory postModel.fromJson(Map<String, dynamic> json)=> postModel(
        userId: json['userId'],
        id:json['id'],
        title: json['title'],
        content: json['body'],
    );
}