public class Git_Items {

	public class Owner {
		public String login {get;set;} 
		public Integer id {get;set;} 
		public String node_id {get;set;} 
		public String avatar_url {get;set;} 
		public String gravatar_id {get;set;} 
		public String url {get;set;} 
		public String html_url {get;set;} 
		public String followers_url {get;set;} 
		public String following_url {get;set;} 
		public String gists_url {get;set;} 
		public String starred_url {get;set;} 
		public String subscriptions_url {get;set;} 
		public String organizations_url {get;set;} 
		public String repos_url {get;set;} 
		public String events_url {get;set;} 
		public String received_events_url {get;set;} 
		public String type_Z {get;set;} // in json: type
		public Boolean site_admin {get;set;} 

		public Owner(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'login') {
							login = parser.getText();
						} else if (text == 'id') {
							id = parser.getIntegerValue();
						} else if (text == 'node_id') {
							node_id = parser.getText();
						} else if (text == 'avatar_url') {
							avatar_url = parser.getText();
						} else if (text == 'gravatar_id') {
							gravatar_id = parser.getText();
						} else if (text == 'url') {
							url = parser.getText();
						} else if (text == 'html_url') {
							html_url = parser.getText();
						} else if (text == 'followers_url') {
							followers_url = parser.getText();
						} else if (text == 'following_url') {
							following_url = parser.getText();
						} else if (text == 'gists_url') {
							gists_url = parser.getText();
						} else if (text == 'starred_url') {
							starred_url = parser.getText();
						} else if (text == 'subscriptions_url') {
							subscriptions_url = parser.getText();
						} else if (text == 'organizations_url') {
							organizations_url = parser.getText();
						} else if (text == 'repos_url') {
							repos_url = parser.getText();
						} else if (text == 'events_url') {
							events_url = parser.getText();
						} else if (text == 'received_events_url') {
							received_events_url = parser.getText();
						} else if (text == 'type') {
							type_Z = parser.getText();
						} else if (text == 'site_admin') {
							site_admin = parser.getBooleanValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Owner consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public Integer id {get;set;} 
	public String node_id {get;set;} 
	public String name {get;set;} 
	public String full_name {get;set;} 
	public Boolean private_Z {get;set;} // in json: private
	public Owner owner {get;set;} 
	public String html_url {get;set;} 
	public String description {get;set;} 
	public Boolean fork {get;set;} 
	public String url {get;set;} 
	public String forks_url {get;set;} 
	public String keys_url {get;set;} 
	public String collaborators_url {get;set;} 
	public String teams_url {get;set;} 
	public String hooks_url {get;set;} 
	public String issue_events_url {get;set;} 
	public String events_url {get;set;} 
	public String assignees_url {get;set;} 
	public String branches_url {get;set;} 
	public String tags_url {get;set;} 
	public String blobs_url {get;set;} 
	public String git_tags_url {get;set;} 
	public String git_refs_url {get;set;} 
	public String trees_url {get;set;} 
	public String statuses_url {get;set;} 
	public String languages_url {get;set;} 
	public String stargazers_url {get;set;} 
	public String contributors_url {get;set;} 
	public String subscribers_url {get;set;} 
	public String subscription_url {get;set;} 
	public String commits_url {get;set;} 
	public String git_commits_url {get;set;} 
	public String comments_url {get;set;} 
	public String issue_comment_url {get;set;} 
	public String contents_url {get;set;} 
	public String compare_url {get;set;} 
	public String merges_url {get;set;} 
	public String archive_url {get;set;} 
	public String downloads_url {get;set;} 
	public String issues_url {get;set;} 
	public String pulls_url {get;set;} 
	public String milestones_url {get;set;} 
	public String notifications_url {get;set;} 
	public String labels_url {get;set;} 
	public String releases_url {get;set;} 
	public String deployments_url {get;set;} 
	public String created_at {get;set;} 
	public String updated_at {get;set;} 
	public String pushed_at {get;set;} 
	public String git_url {get;set;} 
	public String ssh_url {get;set;} 
	public String clone_url {get;set;} 
	public String svn_url {get;set;} 
	public String homepage {get;set;} 
	public Integer size {get;set;} 
	public Integer stargazers_count {get;set;} 
	public Integer watchers_count {get;set;} 
	public String language {get;set;} 
	public Boolean has_issues {get;set;} 
	public Boolean has_projects {get;set;} 
	public Boolean has_downloads {get;set;} 
	public Boolean has_wiki {get;set;} 
	public Boolean has_pages {get;set;} 
	public Integer forks_count {get;set;} 
	public String mirror_url {get;set;} 
	public Boolean archived {get;set;} 
	public Boolean disabled {get;set;} 
	public Integer open_issues_count {get;set;} 
	public License license {get;set;} 
	public Integer forks {get;set;} 
	public Integer open_issues {get;set;} 
	public Integer watchers {get;set;} 
	public String default_branch {get;set;} 
	public Double score {get;set;} 

	public Git_Items(JSONParser parser) {
		while (parser.nextToken() != System.JSONToken.END_OBJECT) {
			if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
				String text = parser.getText();
				if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
					if (text == 'id') {
						id = parser.getIntegerValue();
					} else if (text == 'node_id') {
						node_id = parser.getText();
					} else if (text == 'name') {
						name = parser.getText();
					} else if (text == 'full_name') {
						full_name = parser.getText();
					} else if (text == 'private') {
						private_Z = parser.getBooleanValue();
					} else if (text == 'owner') {
						owner = new Owner(parser);
					} else if (text == 'html_url') {
						html_url = parser.getText();
					} else if (text == 'description') {
						description = parser.getText();
					} else if (text == 'fork') {
						fork = parser.getBooleanValue();
					} else if (text == 'url') {
						url = parser.getText();
					} else if (text == 'forks_url') {
						forks_url = parser.getText();
					} else if (text == 'keys_url') {
						keys_url = parser.getText();
					} else if (text == 'collaborators_url') {
						collaborators_url = parser.getText();
					} else if (text == 'teams_url') {
						teams_url = parser.getText();
					} else if (text == 'hooks_url') {
						hooks_url = parser.getText();
					} else if (text == 'issue_events_url') {
						issue_events_url = parser.getText();
					} else if (text == 'events_url') {
						events_url = parser.getText();
					} else if (text == 'assignees_url') {
						assignees_url = parser.getText();
					} else if (text == 'branches_url') {
						branches_url = parser.getText();
					} else if (text == 'tags_url') {
						tags_url = parser.getText();
					} else if (text == 'blobs_url') {
						blobs_url = parser.getText();
					} else if (text == 'git_tags_url') {
						git_tags_url = parser.getText();
					} else if (text == 'git_refs_url') {
						git_refs_url = parser.getText();
					} else if (text == 'trees_url') {
						trees_url = parser.getText();
					} else if (text == 'statuses_url') {
						statuses_url = parser.getText();
					} else if (text == 'languages_url') {
						languages_url = parser.getText();
					} else if (text == 'stargazers_url') {
						stargazers_url = parser.getText();
					} else if (text == 'contributors_url') {
						contributors_url = parser.getText();
					} else if (text == 'subscribers_url') {
						subscribers_url = parser.getText();
					} else if (text == 'subscription_url') {
						subscription_url = parser.getText();
					} else if (text == 'commits_url') {
						commits_url = parser.getText();
					} else if (text == 'git_commits_url') {
						git_commits_url = parser.getText();
					} else if (text == 'comments_url') {
						comments_url = parser.getText();
					} else if (text == 'issue_comment_url') {
						issue_comment_url = parser.getText();
					} else if (text == 'contents_url') {
						contents_url = parser.getText();
					} else if (text == 'compare_url') {
						compare_url = parser.getText();
					} else if (text == 'merges_url') {
						merges_url = parser.getText();
					} else if (text == 'archive_url') {
						archive_url = parser.getText();
					} else if (text == 'downloads_url') {
						downloads_url = parser.getText();
					} else if (text == 'issues_url') {
						issues_url = parser.getText();
					} else if (text == 'pulls_url') {
						pulls_url = parser.getText();
					} else if (text == 'milestones_url') {
						milestones_url = parser.getText();
					} else if (text == 'notifications_url') {
						notifications_url = parser.getText();
					} else if (text == 'labels_url') {
						labels_url = parser.getText();
					} else if (text == 'releases_url') {
						releases_url = parser.getText();
					} else if (text == 'deployments_url') {
						deployments_url = parser.getText();
					} else if (text == 'created_at') {
						created_at = parser.getText();
					} else if (text == 'updated_at') {
						updated_at = parser.getText();
					} else if (text == 'pushed_at') {
						pushed_at = parser.getText();
					} else if (text == 'git_url') {
						git_url = parser.getText();
					} else if (text == 'ssh_url') {
						ssh_url = parser.getText();
					} else if (text == 'clone_url') {
						clone_url = parser.getText();
					} else if (text == 'svn_url') {
						svn_url = parser.getText();
					} else if (text == 'homepage') {
						homepage = parser.getText();
					} else if (text == 'size') {
						size = parser.getIntegerValue();
					} else if (text == 'stargazers_count') {
						stargazers_count = parser.getIntegerValue();
					} else if (text == 'watchers_count') {
						watchers_count = parser.getIntegerValue();
					} else if (text == 'language') {
						language = parser.getText();
					} else if (text == 'has_issues') {
						has_issues = parser.getBooleanValue();
					} else if (text == 'has_projects') {
						has_projects = parser.getBooleanValue();
					} else if (text == 'has_downloads') {
						has_downloads = parser.getBooleanValue();
					} else if (text == 'has_wiki') {
						has_wiki = parser.getBooleanValue();
					} else if (text == 'has_pages') {
						has_pages = parser.getBooleanValue();
					} else if (text == 'forks_count') {
						forks_count = parser.getIntegerValue();
					} else if (text == 'mirror_url') {
						mirror_url = parser.getText();
					} else if (text == 'archived') {
						archived = parser.getBooleanValue();
					} else if (text == 'disabled') {
						disabled = parser.getBooleanValue();
					} else if (text == 'open_issues_count') {
						open_issues_count = parser.getIntegerValue();
					} else if (text == 'license') {
						license = new License(parser);
					} else if (text == 'forks') {
						forks = parser.getIntegerValue();
					} else if (text == 'open_issues') {
						open_issues = parser.getIntegerValue();
					} else if (text == 'watchers') {
						watchers = parser.getIntegerValue();
					} else if (text == 'default_branch') {
						default_branch = parser.getText();
					} else if (text == 'score') {
						score = parser.getDoubleValue();
					} else {
						System.debug(LoggingLevel.WARN, 'Git_Items consuming unrecognized property: '+text);
						consumeObject(parser);
					}
				}
			}
		}
	}
	
	public class License {
		public String key {get;set;} 
		public String name {get;set;} 
		public String spdx_id {get;set;} 
		public String url {get;set;} 
		public String node_id {get;set;} 

		public License(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'spdx_id') {
							spdx_id = parser.getText();
						} else if (text == 'url') {
							url = parser.getText();
						} else if (text == 'node_id') {
							node_id = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'License consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	
	public static Git_Items parse(String json) {
		System.JSONParser parser = System.JSON.createParser(json);
		return new Git_Items(parser);
	}
	
	public static void consumeObject(System.JSONParser parser) {
		Integer depth = 0;
		do {
			System.JSONToken curr = parser.getCurrentToken();
			if (curr == System.JSONToken.START_OBJECT || 
				curr == System.JSONToken.START_ARRAY) {
				depth++;
			} else if (curr == System.JSONToken.END_OBJECT ||
				curr == System.JSONToken.END_ARRAY) {
				depth--;
			}
		} while (depth > 0 && parser.nextToken() != null);
	}
	







}