const baseUrl = "https://jsonplaceholder.typicode.com";

enum ApiPath {
  users,
  posts,
}

String apiEndPoint(ApiPath path) {
  switch (path) {
    case ApiPath.users:
      return "$baseUrl/users";
    case ApiPath.posts:
      return "$baseUrl/posts";
    default:
      return "";
  }
}

enum ApiMethod {
  get,
  post,
  put,
  delete,
}