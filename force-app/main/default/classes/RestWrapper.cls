public class RestWrapper {

	public class Blogs {
		public String id;
		public String title;
		public String url;
	}

	public String author;
	public List<Blogs> blogs;

	
	public static RestWrapper parse(String json) {
		return (RestWrapper) System.JSON.deserialize(json, RestWrapper.class);
	}
}