## This file generates seed data for the application 

#Themes
t1 = Theme.create(header: "#96858F" ,background: "#6D7993" , subreddit: "#9099A2" , post: "#D5D5D5" , themeName: "The Blues"); 
t2 = Theme.create(header: "#18121E"  ,background: "#233237"  , subreddit: "#984B43"  , post: "#D5D5D5" , themeName: "Rustic");
t3 = Theme.create(header: "#6B7A8F"  ,background: "#F7882F"  , subreddit: "#F7C331" , post: "#DCC7AA"  , themeName: "Orange Delight" ); 
t4 = Theme.create(header: "#CF6766" ,background: "#031424"  , subreddit: "#30415D"  , post: "#8EAEBD"  , themeName: "Dark Melon"); 
t5 = Theme.create(header: "#DA635D"  ,background: "#4E4E56"  , subreddit: "#DCD0C0"  , post: "#B1938B"  , themeName: "Modern Home" ); 
t6 = Theme.create(header: "#000000"  ,background: "#4E4E56"  , subreddit: "#76323F"  , post: "#B1938B"  , themeName: "Darkness" ); 
t7 = Theme.create(header: "#D3D3D3"  ,background: "#FFFFFF"  , subreddit: "#FFFFFF"  , post: "#D3D3D3"   , themeName: "Ugly Duckling" );

#Sample Subreddits
sr1 = Subreddit.create(name: "cars");
sr2 = Subreddit.create(name: "jokes");
sr3 = Subreddit.create(name: "houses");
sr4 = Subreddit.create(name: "baseball");
sr6 = Subreddit.create(name: "cats");

#Sample Users
u1 = User.create(username: "ccabell", email: "x@gmail.com");
u2 = User.create(username: "jsmith", email: "y@gmail.com");
u3 = User.create(username: "jsmoke", email: "z@gmail.com");
u4 = User.create(username: "aidir", email: "z@gmail.com");
u5 = User.create(username: "noahf", email: "z@gmail.com");
u6 = User.create(username: "laurah", email: "z@gmail.com");
u7 = User.create(username: "dangn", email: "z@gmail.com");

#Sample Settings
set1 = Setting.create(user_id: u1.id, numberOfCols: 3, theme_id: t1.id);
set2 = Setting.create(user_id: u2.id, numberOfCols: 2, theme_id: t2.id);
set3 = Setting.create(user_id: u3.id, numberOfCols: 2, theme_id: t3.id);
set4 = Setting.create(user_id: u4.id, numberOfCols: 3, theme_id: t4.id);
set5 = Setting.create(user_id: u5.id, numberOfCols: 1, theme_id: t5.id);
set6 = Setting.create(user_id: u6.id, numberOfCols: 3, theme_id: t6.id);
set7 = Setting.create(user_id: u7.id, numberOfCols: 1, theme_id: t7.id);

#Sample Subscriptions
sb1 = Subscription.create(user_id: u1.id, subreddit_id: sr1.id);
sb2 = Subscription.create(user_id: u1.id, subreddit_id: sr2.id);
sb3 = Subscription.create(user_id: u2.id, subreddit_id: sr3.id);
sb4 = Subscription.create(user_id: u3.id, subreddit_id: sr3.id);
sb5 = Subscription.create(user_id: u3.id, subreddit_id: sr4.id);

