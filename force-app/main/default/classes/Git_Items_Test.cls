@IsTest
public class Git_Items_Test {
	
	// This test method should give 100% coverage
	static testMethod void testParse() {
		String json = '{'+
		'      \"id\": 132464395,'+
		'      \"node_id\": \"MDEwOlJlcG9zaXRvcnkxMzI0NjQzOTU=\",'+
		'      \"name\": \"JavaGuide\",'+
		'      \"full_name\": \"Snailclimb/JavaGuide\",'+
		'      \"private\": false,'+
		'      \"owner\": {'+
		'        \"login\": \"Snailclimb\",'+
		'        \"id\": 29880145,'+
		'        \"node_id\": \"MDQ6VXNlcjI5ODgwMTQ1\",'+
		'        \"avatar_url\": \"https://avatars0.githubusercontent.com/u/29880145?v=4\",'+
		'        \"gravatar_id\": \"\",'+
		'        \"url\": \"https://api.github.com/users/Snailclimb\",'+
		'        \"html_url\": \"https://github.com/Snailclimb\",'+
		'        \"followers_url\": \"https://api.github.com/users/Snailclimb/followers\",'+
		'        \"following_url\": \"https://api.github.com/users/Snailclimb/following{/other_user}\",'+
		'        \"gists_url\": \"https://api.github.com/users/Snailclimb/gists{/gist_id}\",'+
		'        \"starred_url\": \"https://api.github.com/users/Snailclimb/starred{/owner}{/repo}\",'+
		'        \"subscriptions_url\": \"https://api.github.com/users/Snailclimb/subscriptions\",'+
		'        \"organizations_url\": \"https://api.github.com/users/Snailclimb/orgs\",'+
		'        \"repos_url\": \"https://api.github.com/users/Snailclimb/repos\",'+
		'        \"events_url\": \"https://api.github.com/users/Snailclimb/events{/privacy}\",'+
		'        \"received_events_url\": \"https://api.github.com/users/Snailclimb/received_events\",'+
		'        \"type\": \"User\",'+
		'        \"site_admin\": false'+
		'      },'+
		'      \"html_url\": \"https://github.com/Snailclimb/JavaGuide\",'+
		'      \"description\": \"「Java学习+面试指南」一份涵盖大部分Java程序员所需要掌握的核心知识。准备 Java 面试，首选 JavaGuide！\",'+
		'      \"fork\": false,'+
		'      \"url\": \"https://api.github.com/repos/Snailclimb/JavaGuide\",'+
		'      \"forks_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/forks\",'+
		'      \"keys_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/keys{/key_id}\",'+
		'      \"collaborators_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/collaborators{/collaborator}\",'+
		'      \"teams_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/teams\",'+
		'      \"hooks_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/hooks\",'+
		'      \"issue_events_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/issues/events{/number}\",'+
		'      \"events_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/events\",'+
		'      \"assignees_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/assignees{/user}\",'+
		'      \"branches_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/branches{/branch}\",'+
		'      \"tags_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/tags\",'+
		'      \"blobs_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/git/blobs{/sha}\",'+
		'      \"git_tags_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/git/tags{/sha}\",'+
		'      \"git_refs_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/git/refs{/sha}\",'+
		'      \"trees_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/git/trees{/sha}\",'+
		'      \"statuses_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/statuses/{sha}\",'+
		'      \"languages_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/languages\",'+
		'      \"stargazers_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/stargazers\",'+
		'      \"contributors_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/contributors\",'+
		'      \"subscribers_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/subscribers\",'+
		'      \"subscription_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/subscription\",'+
		'      \"commits_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/commits{/sha}\",'+
		'      \"git_commits_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/git/commits{/sha}\",'+
		'      \"comments_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/comments{/number}\",'+
		'      \"issue_comment_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/issues/comments{/number}\",'+
		'      \"contents_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/contents/{+path}\",'+
		'      \"compare_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/compare/{base}...{head}\",'+
		'      \"merges_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/merges\",'+
		'      \"archive_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/{archive_format}{/ref}\",'+
		'      \"downloads_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/downloads\",'+
		'      \"issues_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/issues{/number}\",'+
		'      \"pulls_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/pulls{/number}\",'+
		'      \"milestones_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/milestones{/number}\",'+
		'      \"notifications_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/notifications{?since,all,participating}\",'+
		'      \"labels_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/labels{/name}\",'+
		'      \"releases_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/releases{/id}\",'+
		'      \"deployments_url\": \"https://api.github.com/repos/Snailclimb/JavaGuide/deployments\",'+
		'      \"created_at\": \"2018-05-07T13:27:00Z\",'+
		'      \"updated_at\": \"2020-10-03T01:21:15Z\",'+
		'      \"pushed_at\": \"2020-09-29T11:35:53Z\",'+
		'      \"git_url\": \"git://github.com/Snailclimb/JavaGuide.git\",'+
		'      \"ssh_url\": \"git@github.com:Snailclimb/JavaGuide.git\",'+
		'      \"clone_url\": \"https://github.com/Snailclimb/JavaGuide.git\",'+
		'      \"svn_url\": \"https://github.com/Snailclimb/JavaGuide\",'+
		'      \"homepage\": \"https://gitee.com/SnailClimb/JavaGuide\",'+
		'      \"size\": 47931,'+
		'      \"stargazers_count\": 88970,'+
		'      \"watchers_count\": 88970,'+
		'      \"language\": \"Java\",'+
		'      \"has_issues\": true,'+
		'      \"has_projects\": true,'+
		'      \"has_downloads\": true,'+
		'      \"has_wiki\": true,'+
		'      \"has_pages\": true,'+
		'      \"forks_count\": 30773,'+
		'      \"mirror_url\": \"null\",'+
		'      \"archived\": false,'+
		'      \"disabled\": false,'+
		'      \"open_issues_count\": 36,'+
		'      \"license\": {'+
		'        \"key\": \"apache-2.0\",'+
		'        \"name\": \"Apache License 2.0\",'+
		'        \"spdx_id\": \"Apache-2.0\",'+
		'        \"url\": \"https://api.github.com/licenses/apache-2.0\",'+
		'        \"node_id\": \"MDc6TGljZW5zZTI=\"'+
		'      },'+
		'      \"forks\": 30773,'+
		'      \"open_issues\": 36,'+
		'      \"watchers\": 88970,'+
		'      \"default_branch\": \"master\",'+
		'      \"score\": 1.0'+
		'    }';
		Git_Items r = Git_Items.parse(json);
		System.assert(r != null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		Git_Items.Owner objOwner = new Git_Items.Owner(System.JSON.createParser(json));
		System.assert(objOwner != null);
		System.assert(objOwner.login == null);
		System.assert(objOwner.id == null);
		System.assert(objOwner.node_id == null);
		System.assert(objOwner.avatar_url == null);
		System.assert(objOwner.gravatar_id == null);
		System.assert(objOwner.url == null);
		System.assert(objOwner.html_url == null);
		System.assert(objOwner.followers_url == null);
		System.assert(objOwner.following_url == null);
		System.assert(objOwner.gists_url == null);
		System.assert(objOwner.starred_url == null);
		System.assert(objOwner.subscriptions_url == null);
		System.assert(objOwner.organizations_url == null);
		System.assert(objOwner.repos_url == null);
		System.assert(objOwner.events_url == null);
		System.assert(objOwner.received_events_url == null);
		System.assert(objOwner.type_Z == null);
		System.assert(objOwner.site_admin == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		Git_Items objGit_Items = new Git_Items(System.JSON.createParser(json));
		System.assert(objGit_Items != null);
		System.assert(objGit_Items.id == null);
		System.assert(objGit_Items.node_id == null);
		System.assert(objGit_Items.name == null);
		System.assert(objGit_Items.full_name == null);
		System.assert(objGit_Items.private_Z == null);
		System.assert(objGit_Items.owner == null);
		System.assert(objGit_Items.html_url == null);
		System.assert(objGit_Items.description == null);
		System.assert(objGit_Items.fork == null);
		System.assert(objGit_Items.url == null);
		System.assert(objGit_Items.forks_url == null);
		System.assert(objGit_Items.keys_url == null);
		System.assert(objGit_Items.collaborators_url == null);
		System.assert(objGit_Items.teams_url == null);
		System.assert(objGit_Items.hooks_url == null);
		System.assert(objGit_Items.issue_events_url == null);
		System.assert(objGit_Items.events_url == null);
		System.assert(objGit_Items.assignees_url == null);
		System.assert(objGit_Items.branches_url == null);
		System.assert(objGit_Items.tags_url == null);
		System.assert(objGit_Items.blobs_url == null);
		System.assert(objGit_Items.git_tags_url == null);
		System.assert(objGit_Items.git_refs_url == null);
		System.assert(objGit_Items.trees_url == null);
		System.assert(objGit_Items.statuses_url == null);
		System.assert(objGit_Items.languages_url == null);
		System.assert(objGit_Items.stargazers_url == null);
		System.assert(objGit_Items.contributors_url == null);
		System.assert(objGit_Items.subscribers_url == null);
		System.assert(objGit_Items.subscription_url == null);
		System.assert(objGit_Items.commits_url == null);
		System.assert(objGit_Items.git_commits_url == null);
		System.assert(objGit_Items.comments_url == null);
		System.assert(objGit_Items.issue_comment_url == null);
		System.assert(objGit_Items.contents_url == null);
		System.assert(objGit_Items.compare_url == null);
		System.assert(objGit_Items.merges_url == null);
		System.assert(objGit_Items.archive_url == null);
		System.assert(objGit_Items.downloads_url == null);
		System.assert(objGit_Items.issues_url == null);
		System.assert(objGit_Items.pulls_url == null);
		System.assert(objGit_Items.milestones_url == null);
		System.assert(objGit_Items.notifications_url == null);
		System.assert(objGit_Items.labels_url == null);
		System.assert(objGit_Items.releases_url == null);
		System.assert(objGit_Items.deployments_url == null);
		System.assert(objGit_Items.created_at == null);
		System.assert(objGit_Items.updated_at == null);
		System.assert(objGit_Items.pushed_at == null);
		System.assert(objGit_Items.git_url == null);
		System.assert(objGit_Items.ssh_url == null);
		System.assert(objGit_Items.clone_url == null);
		System.assert(objGit_Items.svn_url == null);
		System.assert(objGit_Items.homepage == null);
		System.assert(objGit_Items.size == null);
		System.assert(objGit_Items.stargazers_count == null);
		System.assert(objGit_Items.watchers_count == null);
		System.assert(objGit_Items.language == null);
		System.assert(objGit_Items.has_issues == null);
		System.assert(objGit_Items.has_projects == null);
		System.assert(objGit_Items.has_downloads == null);
		System.assert(objGit_Items.has_wiki == null);
		System.assert(objGit_Items.has_pages == null);
		System.assert(objGit_Items.forks_count == null);
		System.assert(objGit_Items.mirror_url == null);
		System.assert(objGit_Items.archived == null);
		System.assert(objGit_Items.disabled == null);
		System.assert(objGit_Items.open_issues_count == null);
		System.assert(objGit_Items.license == null);
		System.assert(objGit_Items.forks == null);
		System.assert(objGit_Items.open_issues == null);
		System.assert(objGit_Items.watchers == null);
		System.assert(objGit_Items.default_branch == null);
		System.assert(objGit_Items.score == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		Git_Items.License objLicense = new Git_Items.License(System.JSON.createParser(json));
		System.assert(objLicense != null);
		System.assert(objLicense.key == null);
		System.assert(objLicense.name == null);
		System.assert(objLicense.spdx_id == null);
		System.assert(objLicense.url == null);
		System.assert(objLicense.node_id == null);
	}
}