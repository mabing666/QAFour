/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : fouqa

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2016-06-25 15:40:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `answer`
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ascontent` mediumtext,
  `astime` datetime DEFAULT NULL,
  `asuser` int(11) DEFAULT NULL,
  `QID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKAnswerUID` (`asuser`),
  KEY `FKAnswerQID` (`QID`),
  CONSTRAINT `FKAnswerQID` FOREIGN KEY (`QID`) REFERENCES `question` (`ID`),
  CONSTRAINT `FKAnswerUID` FOREIGN KEY (`asuser`) REFERENCES `userinfo` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('1', '直接在百度中搜索软件测试论坛 就可关注比较大一些的相关网站\r\n而对于软件测试学习，题主可以关注麦子学院、百度传课、腾讯课堂这些在线教育网站\r\n书籍的话，可以看看《软件测试的艺术》、《Visual Studio 2010软件测试指南》等等都可以 ', '2016-06-24 17:25:03', '3', '2');
INSERT INTO `answer` VALUES ('2', '网站就不说了，上网自己找找，反正就那么几个。按你的方向推荐几本书吧：qtp自动化测试技术领航，lr性能测试进阶（第二版），探索性测试（谷歌专家写的）。确认你要哪类软件方向阿：桌面软件类c井，wpf，socket得懂吧；web的web service,各种网络协议，html,jsp,css得熟吧；无线类，主流操作系列浅析，app应用，适配机型，各种自动化工具。此外Linux,db要', '2016-06-24 17:27:39', '4', '2');
INSERT INTO `answer` VALUES ('3', '最好定向发展。前端是统称，大公司里会分为页面重构工程师，javascript工程师和H5工程师。\r\n\r\n页面重构工程师的看家本领就是要能把设计图做到99%的还原。我之面试别人的时候会让对方做一个简单的页面。做好后用三大内核的浏览器打开后截屏。然后放到photoshop里，调整透明度，看是否能与设计图重合，重合率越大当然说明你的兼容做的越好。重构能力越大。这样你就可以做一个优秀的页面重构工程师。此时你不需要别的技能了。什么优化之类的，你也不需要考虑。\r\n\r\njavascript工程师主要是做核心库，有些公司具有自己的框架。javascript主要是做这个的。在H5时代之前，javascript也要做出动效。但目前动效基本由H5工程师来做。\r\n\r\n再说H5工程师，这几乎是为移动端开发的专门准备的。其看家本领是1）适配：适配各种手机。2）动效，各种动态效果，过渡，变换等。\r\n3）能熟练通过api调用手机底层，如震动，拍摄，定位等。4）能做app 5）能做游戏\r\n\r\n\r\n所以大致就这三个方向，就看你选择哪个了。\r\n\r\n\r\n很多人想把css，javascript，html等一并学会，其实那样大而全是无法学好的。前端的新技能层出不穷。有时你还要能写测试之类的。\r\n\r\n但是定向发展就不需要这样。\r\n\r\n我之前是做玩具设计的。用maya建模，然后通过一套软件能让其在web上3D展示。后来就学习了javascript，建模也用blender建模，通过javascript把用blender建好的模型渲染出来。所以我对javascript有一定的了解，尤其是canvas和webGL方向。\r\n\r\n但愿我没有误导你，只是觉得定向发展最有出路。\r\n\r\n因为什么都会肯定就是什么都不会。', '2016-06-24 17:35:09', '3', '3');
INSERT INTO `answer` VALUES ('4', '不太认同。前端应是杂而精的工程，既然是工程则可有分工之别，而非纯粹所谓方向。', '2016-06-24 17:38:31', '5', null);
INSERT INTO `answer` VALUES ('5', '我觉得能够做到这点，都好刁啊“做好后用三大内核的浏览器打开后截屏。然后放到photoshop里，调整透明度，看是否能与设计图重合，重合率越大当然说明你的兼容做的越好”', '2016-06-24 17:42:04', '7', null);
INSERT INTO `answer` VALUES ('6', '\r\n\r\n简单 回复 众里寻查看对话\r\n\r\n我感觉我做了三四年前端了，还是不能完全做到和设计图重合，大部分时候我都是看着差不多就行了，很多地方都懒得测量像素值', '2016-06-24 17:45:09', '9', null);
INSERT INTO `answer` VALUES ('7', '喜欢OS和C的话，争取在找工作前给LINUX内核提交几个PATCH吧，如果论方向的话，内存和存储方向是最好的了。\r\n个人建议如果喜欢玩技术还是集中在单点上更好，不要泛泛的搞。', '2016-06-24 17:48:00', '10', '4');
INSERT INTO `answer` VALUES ('8', '\r\n反对，不会显示你的姓名 \r\n\r\n\r\n gentoofly ，我的微信公众号：fsecurity 欢迎关注 \r\n\r\n1 人赞同 \r\n\r\n\r\n以中标麒麟、湖南麒麟、普华基础软件、深度Deepin、新支点、优麒麟、红旗软件、中科方德、思普、凝思、一铭等为代表的国产操作系统，以红帽、SUSE 、Ubuntu等为代表的国际Linux操作系统表示期待楼主毕业后去面试。', '2016-06-24 17:49:14', '11', '4');
INSERT INTO `answer` VALUES ('9', '玩Linux在我司的招聘中只是加分项，还是要看实际能力，就折腾几个桌面的本事不足以进', '2016-06-24 17:50:11', '5', null);
INSERT INTO `answer` VALUES ('10', '\r\n反对，不会显示你的姓名 \r\n\r\n\r\n pansz ，我说的大多是一本道 \r\n\r\n37 人赞同 \r\n\r\n\r\n楼主，Linux 底层，从零开始构建 Linux，精通 C 语言，能搞 Bootloader，能搞驱动，至少在当下，你是完全不用担心没饭吃的。甚至会比多数 java 程序员活得更好。\r\n\r\n这个行业的需求量很大！因为，绝大多数电子设备里面装的都是 Linux，是的，比其他系统多很多倍。\r\n\r\n至于什么公司？其实中兴华为一类的公司都可以选择，当然还有各种做山寨电子设备的厂商（别瞧不起山寨二字，因为人家其实是闷声发大财的），还有各种硬件厂商什么的，其实选择余地很大。 ', '2016-06-24 17:51:22', '12', '4');
INSERT INTO `answer` VALUES ('11', '楼上说得只是一个方向吧，主要也看楼主是看linux那个方向，像楼上说的嵌入式是一方面，网络方向也行，存储，分布式 虚拟化。方向太多看你爱好。', '2016-06-24 17:52:41', '13', null);
INSERT INTO `answer` VALUES ('12', '\r\n\r\n\r\n\r\n 吴辉斌 ，移动互联网iOS开发工程师 \r\n\r\n收录于  编辑推荐  •993 人赞同 \r\n\r\n\r\nGitHub上有很多不错的iOS开源项目，个人认为不错的，有这么几个：\r\n1. ReactiveCocoa：ReactiveCocoa/ReactiveCocoa · GitHub：\r\nGitHub自家的函数式响应式编程范式的Objective-C实现，名字听着很高大上，学习曲线确实也比较陡，但是绝对会改变你对iOS编程的认知，首推之。\r\n2. Mantle：Mantle/Mantle · GitHub：\r\n又是GitHub自家的产物，轻量级建模的首选，也可以很好的配合CoreData工作。\r\n3. AFNetworking:AFNetworking/AFNetworking · GitHub:\r\niOS7之前，苹果自带的网络库有多难用！matt大神的AFNetworking绝对可以解放你。使用苹果的NSURLRequest及iOS7的NSURLSession，清晰的架构，足够的文档，可以认为是第三方开源库的楷模了。\r\n4. BlocksKit: pandamonia/BlocksKit 路 GitHub\r\n本人相当偏爱Functional Programming，Objective-C中的block绝对满足我的口味。但想用好block也不是很容易，如果对block有爱，就请使用这个库吧。\r\n5. Nimbus：jverkoey/nimbus · GitHub\r\n第一次关注nimbus是因为Facebook的Three20开源库。可惜Three20库已死，主要作者跳出来，写了nimbus。\r\n6. pop: facebook/pop · GitHub\r\nfacebook出品的paper，动画效果太好了，赶超apple的原生app一大截。pop就是paper的动画库！\r\n7. GPUImage: BradLarson/GPUImage ยท GitHub\r\niOS7出来时，很多好看的效果，其实都是对图像的各种处理（比如模糊效果）。图像处理看来以后也是iOS开发的必备技能之一了。而GPUImage，就是能快速处理各种图像效果的利器！\r\n＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝\r\n好吧，我承认第一次知乎的回答有点惊喜，没想到这么多人点赞 ^_^\r\n\r\n大部分iOS的第三方库都是在苹果的基础框架之上的产物，所以基础很重要，有时间看看WWDC的历年视频，是不错的选择。\r\n最近还是在深入学习ReactiveCocoa，看ReactiveCocoa的源码。对响应式编程还是有很多期待的，有时间也要重温函数式编程（比如Haskell），或者把响应式编程的公开课（Coursera.org）看完。编程范式的选择可以说是相当重要的。未来是多核+并发的时代，函数式编程无疑是更好的选择。\r\niOS的UI也很重要，但是如果理解apple的CoreAnimation及CoreGraphics框架，大部分UI基本是没问题的。当前，iOS7的各种炫酷效果，也需要对图像的处理有一定理解。说到图形学，OpenCV是一个不错的选择，而OpenGL也是另一个不错的方向（推荐的公开课：Interactive 3D Graphics Course With Three.js & WebGL）。\r\n当然最重要的，还是计算机的各种基础知识了吧，知其然，知其所以然，才是正道～\r\n\r\n以上是个人的经验，欢迎交流讨论～ ', '2016-06-24 17:57:27', '14', '6');
INSERT INTO `answer` VALUES ('13', '作者：罗轩\n链接：https://www.zhihu.com/question/22914651/answer/25121776\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。\n\n首先告诉你github上搜索所有库的方法（trending只显示25个）：在搜索框输入 stars:>1 ，回车，再选择语言，和排序（可以试下most stars）。以上方法适合没有目标的学习，你可以自己挑感兴趣的看。不过，我推荐的还是，需求为主导，需要用到什么库，就去找什么库。先分析该功能自己会怎么去实现，然后看看开源库是怎么实现的，相互印证，这样子进步很快，关键是印象深刻。然后下面是我觉得不错的一些开源项目：nimbus： 框架，文档很齐全，好像比Three20要火一些了。 jverkoey/nimbus · GitHubAFNetworking： HTTP网络通信库，不多说，超棒。 AFNetworking/AFNetworking · GitHubRestKit：  HTTP库 用来与RESTful的服务进行交互 。 RestKit/RestKit · GitHubJSONKit：  json库，传说比官方的性能要好，我自己没验证。  johnezang/JSONKit · GitHubSDWebImage：  异步加载网络图片的库，使用超级简单，功能超级强大，也没得说，值得看源代码。   rs/SDWebImage · GitHubcocos2d-iphone：   2d游戏引擎，想开发游戏可以学学。 cocos2d/cocos2d-iphone · GitHubMBProgressHUD：  很实用的HUD，和官方几乎开不出区别。  jdg/MBProgressHUD · GitHubTMCache：  缓存数据，可以缓存到memory或者disk，个人觉得挺不错的。  tumblr/TMCache 路 GitHub就说这么些吧（大家推荐的其实都是那么一些），主要还是自己用，自己去体会。ps. 第三方库管理工具，Cocoa Pods非常好用，方便快捷。', '2016-06-24 17:58:39', '12', '6');
INSERT INTO `answer` VALUES ('14', '我现在用AFNetworking就有些困惑，因为它用的blog，而且是异步得请求，总感觉返回数据太滞后，不知怎么解决，求赐教', '2016-06-24 17:59:23', '3', null);
INSERT INTO `answer` VALUES ('15', 'RAC不仅仅改变了对iOS开发的认知，而是改变了对异步编程+OO+UI开发的认知，在android上也有rxjava', '2016-06-24 18:00:46', '3', null);
INSERT INTO `answer` VALUES ('16', '反正马上就要毕业了，何必想那么多\r\n以后进入社会一样会有同事整天就在聊游戏\r\n现在游戏已经是一种合理合法的娱乐方式了\r\n有什么可怕的？ ', '2016-06-24 18:12:47', '12', '7');
INSERT INTO `answer` VALUES ('17', '到期末考的时候， 他们就要找我问知识点了\r\n我大学时代就只玩单机游戏，和宿舍其他人玩的都不一样，但这不影响我和宿舍里其他人交流啊。你可以尝试换换话题，没必要拘泥于游戏吧。 ', '2016-06-24 18:12:44', '11', '7');
INSERT INTO `answer` VALUES ('18', '到期末考的时候， 他们就要找我问知识点了\r\n不影响交流，毕竟听了这么久网络游戏术语，我也知道一些 ', '2016-06-24 18:12:41', '10', '7');
INSERT INTO `answer` VALUES ('19', '那你就是寝室中的空气 ', '2016-06-24 18:12:38', '9', '7');
INSERT INTO `answer` VALUES ('20', '因为和人斗其乐无穷，另外说1级开始不好玩的，你可以去看看暗黑3天梯有多少人玩 ', '2016-06-24 18:17:00', '10', '8');
INSERT INTO `answer` VALUES ('21', '个人认为，除了高票答案说的这种游戏不用养成随时玩之外。\r\n\r\n还有就是输了可以怪队友，赢了觉得自己牛逼，简而言之，挫败感相对较少。', '2016-06-24 18:16:56', '4', '8');
INSERT INTO `answer` VALUES ('22', 'MOBA类游戏之所以风靡全国（甚至于全世界），就是因为它放弃了时间=金钱的概念。现在的社会不同于十年前，那时候大家都穷的叮当响，旅游和KTV都属于有钱人的奢侈。现在不一样了，双休日去KTV，五一去旅旅游是很正常的事情了。哪还有那么多时间扑在游戏上？MOBA类游戏，长则一个小时，短则二十分钟。让你不用在KTV的时候还顾虑自己的“召唤兽”还没喂，今天的“每日”还没做。让你不用在旅游的时候还顾虑团长在副本门口看着黑色名称的你破口大骂。随时都可以玩，随时都可以放下，不浪费时间。即使几个月不玩，在游戏起点上你也跟别人同一起跑线。耶！再也不担心时间战士和人民币战士了！玩养成类游戏，如同谈恋爱。每天都可以享受谈恋爱带来的幸福，但是也需要你每天都去维护，一旦两个月不去管，那么他（她）的好感度八九成就变成冷淡了，说不定还会移情别恋。MOBA类游戏如同一夜情，爽一下就结束。虽然没有谈恋爱带来的长期的愉悦感，但也不用天天维护爱情嘛。各有所', '2016-06-24 18:16:53', '3', '8');
INSERT INTO `answer` VALUES ('23', '上手简单，游戏远比dota简单。其次，德喵西亚！还有，游戏奖励机制比较好，相对来说游戏效果比较绚，据说要求配置还挺高（⊙▽⊙明明毫无压力啊）游戏要求最低配置低，毕竟现在大部分人的电脑都不怎么好，而这游戏一款千元内的WIN8平板就能运行，总不能让他们那拆了显卡能提高性能的电脑去玩刺客信条大革命吧⊙▽⊙（虽然有不少用万元神机玩LOL的）排位系统，从青铜到黄金到白金钻石最强王者什么的（话说是这样吧我没怎么玩过不太清楚），玩这游戏的天天就想着怎么上分，当然就玩的多啊，而且区还那么多，他们也经常换区去玩加入战斗，玩lol啊，坦克世界什么的这种竞技游戏的有个绝症叫我怎么就管不住这手啊，说好打个首胜（打不出来233）就去睡的结果首胜出了说再打一局再打一局这么打着打着就第二天天亮了。。。然后一看天亮了去次个早餐。。 次完了早餐，一看时间诶小伙伴们该起床了。。。→_→然后叫人去五黑又是一波到天黑。。。最后。。。。啦啦啦。。。德玛西亚，啦啦啦。。。剑', '2016-06-24 18:16:51', '2', '8');
INSERT INTO `answer` VALUES ('24', '之所以不怎么玩LOL主要就是因为觉得每局时间太长……', '2016-06-24 18:19:06', '16', null);
INSERT INTO `answer` VALUES ('25', '单机啥时候玩都行就被无视了么 想联机就联机', '2016-06-24 18:20:05', '6', null);
INSERT INTO `answer` VALUES ('26', '1.等待他人退出，服务器有容载上限\r\n2.排队可以减少用户不停登录导致的资源查询消耗\r\n3.排队其实属于用户友好行为 ', '2016-06-24 18:22:11', '14', '9');
INSERT INTO `answer` VALUES ('27', '为了减轻服务器压力吧。技术原因不太了解，最大的原因应该是这样。想当初 WOW 刚公测的时候，我玩的服务器排队2700多，进去满大街全是人，人比怪多，各种内衣妹子，当然大部分是抠脚大汉。玩起来画面特别卡，机器配置跟不上，网速也跟不上，不排队全部进来的话就搁车了。就如同屠城的时候，人太多经常会掉线，甚至把服务器卡崩溃掉，全服的人集体掉线。如果从供应商的角度来考虑，人越多他越高兴，不会无故让用户进不来游戏的，否则这就是双向坑爹。还有的话，我自己拍脑瓜想到的还有可能还跟进程有关，登录是一个进程，同时进来太多进程的服务器处理不了，只能一个个排队处理进程。最后，最后的最后，为了部落！！！！！！！！！！！！！！！！！！！！\n\n作者：刘钊\n链接：https://www.zhihu.com/question/21154466/answer/17356816\n来源：知乎\n著作权归作者所有', '2016-06-24 18:22:30', '12', '9');
INSERT INTO `answer` VALUES ('28', '服务器的容载就那大，人多了，服务器会卡，大家都掉线，还玩个毛。。。。\r\n一个萝卜一个坑，在服务器人满的时候当然是等前面的人退了，后面排队的才能进。', '2016-06-24 18:23:15', '13', '9');
INSERT INTO `answer` VALUES ('29', '说个最受不了的。影响学业什么的是别人的事我管不着，但自从我的同学迷上英雄联盟之后和他们走一起话题永远是LOL，一路吹自己多么多么牛逼，我通常都是话都插不进去。从外面回宿舍看到的也是一帮人聚在一起LOL，宿舍基本不能看书。一个人一旦被某一种东西充斥大脑而没有其他杂质的时候我觉得是很可怕的，当然那也是一种境界，我没有达到，所以我选择远离。\n\n作者：匿名用户\n链接：https://www.zhihu.com/question/21690276/answer/41991955\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', '2016-06-24 18:24:44', '11', '10');
INSERT INTO `answer` VALUES ('30', '题主提问的方式有些奇怪啊，先问网游对大学生的影响，然后又补充说网游特指英雄联盟。那我当成只问英雄联盟对大学生的影响好了。首先，LOL能在大学生中火起来是有原因的：1.这是少数几个不用花钱就能玩得挺好的游戏，相较于《X幻西游》和《X人》而言，大家起点都差不多，大不了你比我多几套皮肤多几页符文，打起来还是看实力的；2.容易上手，仅举一例：我们宿舍里有俩哥们之前只玩过扫雷和空档接龙之类的小游戏，被我带进坑里没过一学期就打到白银2的段位了；3.英雄角色鲜明，能吸引到妹子——单身汉子可以怒帮萌妹子的提百万队长挡刀提升好感度。至于LOL对大学生的负面影响，在LOL之前，影响大学生的是CS和WAR3，再再之前，影响大学生的是扑克和麻将，连胡适老先生都不能免俗。合着大学生是无辜的，社会偏生派了这些长得花枝招展的糖衣炮弹来侵蚀大学生的精神咯？苍蝇不叮无缝的蛋这句话不是没有道理的，LOL之类的网游只是一个放大镜，把我们没注意到的缺点放大了而已。诸如骂队友菜狗不服SOLO和逆风就挂机这种态度，放到工作上就是不知团队合作和消极怠工。\n\n作者：amajoe\n链接：https://www.zhihu.com/question/21690276/answer/19114352\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', '2016-06-24 18:25:12', '13', '10');
INSERT INTO `answer` VALUES ('31', '作者：可乐加冰\n链接：https://www.zhihu.com/question/47585476/answer/106775745\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。\n\n谢邀～那么多关于英国留欧还是退欧的问题，终于有人问足球了，像经济金融那么高深莫测的问题我根本就搞不懂也不想搞啊～首先确认一点，博斯曼法案不会失效，英国没有那么大的影响力。就算退出了欧盟，欧盟自己还是可以按照自己的规矩来，不仅是足球，还包括其他欧盟的政策如人口自由移动，单一市场的进入资格等等。但是，博斯曼法案不失效，不代表欧盟的球员不会减少。现在欧盟的球员在人口自由移动的规则之下，可以毫无阻碍的来英国踢球。反观非欧盟的球员，则需要获得“工作签证”。英国人一直对外来移民抢自己的工作感到不满，这其中也包括足球（自己本土球员的机会减少），于是不仅普通工签的要求每年都在提高，作为一个非欧盟的职业球员，你需要在全球排名前50的球队效力，且踢了超过75%的比赛，才能获得工作许可，这一规则更改去年才实施，根据BBC的数据，目前英冠（截至2015-2016赛季）共有180名非欧盟球员，满足这个条件的，只有23人。。。这么看起来跟目前的英超似乎没什么关系，不过英冠球队每年都会有三支升级，所以多少还是会有影响。按照这个条件来看，在英超，英冠以及苏超（苏格兰超级联赛）踢球的欧盟球员将有332名无法获得工作签证，近一半的英超球员需要获得工作许可，三分之二在英国踢球的欧盟球员无法达标。', '2016-06-24 18:31:31', '2', '15');
INSERT INTO `answer` VALUES ('32', '作者：可乐加冰\n链接：https://www.zhihu.com/question/47585476/answer/106775745\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。\n\n谢邀～那么多关于英国留欧还是退欧的问题，终于有人问足球了，像经济金融那么高深莫测的问题我根本就搞不懂也不想搞啊～首先确认一点，博斯曼法案不会失效，英国没有那么大的影响力。就算退出了欧盟，欧盟自己还是可以按照自己的规矩来，不仅是足球，还包括其他欧盟的政策如人口自由移动，单一市场的进入资格等等。但是，博斯曼法案不失效，不代表欧盟的球员不会减少。现在欧盟的球员在人口自由移动的规则之下，可以毫无阻碍的来英国踢球。反观非欧盟的球员，则需要获得“工作签证”。英国人一直对外来移民抢自己的工作感到不满，这其中也包括足球（自己本土球员的机会减少），于是不仅普通工签的要求每年都在提高，作为一个非欧盟的职业球员，你需要在全球排名前50的球队效力，且踢了超过75%的比赛，才能获得工作许可，这一规则更改去年才实施，根据BBC的数据，目前英冠（截至2015-2016赛季）共有180名非欧盟球员，满足这个条件的，只有23人。。。这么看起来跟目前的英超似乎没什么关系，不过英冠球队每年都会有三支升级，所以多少还是会有影响。按照这个条件来看，在英超，英冠以及苏超（苏格兰超级联赛）踢球的欧盟球员将有332名无法获得工作签证，近一半的英超球员需要获得工作许可，三分之二在英国踢球的欧盟球员无法达标。', '2016-06-24 18:31:47', '3', '15');
INSERT INTO `answer` VALUES ('33', '1.脱欧不是立即生效，要等到2018年。2.球员的现有合同依然有效，合同到期才要重新考虑劳工证的问题。3.即便不在欧盟，英国球员仍然很可能算作“欧盟球员”，参考俄罗斯和北欧某国家（具体哪个忘记了）。由1,2，劳工证的问题有充分的时间解决，对英国的外籍球员，影响不大，但可能对年轻球员有一定影响。由3，对在海外效力的英国球员，如贝尔，几乎不会产生影响。\n\n作者：匿名用户\n链接：https://www.zhihu.com/question/47585476/answer/107636542\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', '2016-06-24 18:32:49', '4', '15');
INSERT INTO `answer` VALUES ('34', '作者：许嘉明\n链接：https://www.zhihu.com/question/47644159/answer/107466258\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。\n\n首先，请明确球员身价和转会价格是两个含义，身价 4000w 的球员的球员可能 8000w 转会，也可能 2000w 转会。其次，通货膨胀也有两个方面的原因：一是足球商业化的完善，二是货币本身的膨胀球员转会价格的影响因素包括：实力，毫无疑问这是最重要的，实力体现在身价上，这个价格有直接参考，德国的转会市场 European leagues and cup competitions潜力，年龄是重要参考因素，马夏尔为什么能溢价这么多？瓦尔迪却抬不了价？稀缺度，价格是供需关系影响产生的，在如今好中锋稀缺的时代，中锋的转会价格会高于身价，例子：马丁内斯合同，合同剩余期是一个重要的标准，例子：克罗斯商业价值，这个其实除了某些特殊球星，其实影响真的不大，例子：飞鞋门的贝克汉姆到了计算时间部分：先取一号人物：C罗，几个关键数据如下：C罗最巅峰最值钱的一个赛季 09-10 ，身价 6000w 欧元（转会价格 9500w 欧元，溢价 1.5 倍）C罗这个赛季，有一定的滑坡，身价 1.1亿 欧元，个人判断：如果把 C罗放回到 09-10，身价应该是 5000w 欧元左右，把当时的C罗放今天大约是 6000/5000 * 1.1 = 1.32 亿欧元。取二号人物：罗纳尔迪尼奥，关键数据：只有一个，05-06赛季，小罗最颠覆的第二年，身价 5000w 欧元个人判断：1. 颠覆小罗和C罗的身价差不多，所以这个时候的 5000w 欧元应该和 09-10 的 6000w 欧元是差不多的。2. 颠覆时期小罗、齐达内、罗纳尔多、贝克汉姆的身价，应该只有小贝稍微偏低，但是加上商业价值也所差无几。所以我认为结论是：这四个球星颠覆时刻的身价，都在 1.2 亿以上，1.2 亿也是现在梅西的身价；至于实际转会，只有齐达内是颠覆时刻正常合同的转会，放在今天会是 1.5 亿以上，其他几个人都受到了阶段、合同、俱乐部矛盾（三个球员都有）之类因素的影响降低了转会身价，放在今天应该是 6000 ~ 8000w 左右。如有 BUG，欢迎指正。', '2016-06-24 18:35:45', '8', '13');
INSERT INTO `answer` VALUES ('35', '作者：罗睺\n链接：https://www.zhihu.com/question/47644159/answer/107215036\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。\n\n以下答案纯属个人意淫，求各路大神轻喷。通货膨胀有两波，按标志事件来划分，阿布收购切尔西是第一波，曼城和大巴黎是第二波。从历史规律来看，标志事件发生两年后球市才会形成全面的通货膨胀。所以c罗和卡卡虽然在曼城易主一年后才转会皇马，但他们的转会费仍应视为切尔西引起的第一波通货膨胀的产物。所以我们可以在第一波通胀前，第一波通胀后，第二波通胀后这三个时期分别找三个条件相似的球员作为参考。我这里选择的是菲戈，卡卡和苏亚雷斯，理由是三人在转会时实力均为能竞争当世前三的进攻球员，而且都不算特别年轻，转会费没有潜力加成。三人的转会费分别是菲戈5610万美元，卡卡6500万欧元和苏亚雷斯8100万欧元。由于美元兑欧元的汇率在15年前和现在基本颠倒了所以这里对币种差异就忽略不计了。可得出两次通胀中顶级球星的涨幅大概是16%和25%。苏亚雷斯转会巴萨已经两年了，这两年随着球市泡沫进一步吹大和中国资本的介入，转会市场普遍又有一小波上涨，初步估计涨幅在15%左右。可能有些人会对这个结果感到诧异，毕竟区区25%的涨幅远远低于大多数球迷的实际感受。但实际上在两次通胀中顶级球星本来就不是推动物价上涨的主力，通胀真正的主力是那些“小妖”、“新星”和“潜力股”们。18岁的鲁尼在第一波通胀前转会仅仅花了曼联2700万英镑，而去年夏天，成就远不如当年的鲁尼的21岁斯特林就花了曼城5000万英镑，至于博格巴和内马尔这个级别的年轻人不掏一亿欧元想都别想。年轻球员从两次通胀前到现在的涨幅最保守估计也翻了一倍。除了全面的通货膨胀之外，转会市场的另一个变化是欧洲职业足球商业化的进程大大加深了，简单来说，小贝的颜值和知名度对身价的加成会比当年多很多。以前面的例子来分析，苏牙放到15年前可能卖价和菲戈差不多，但菲戈放到今天卖得一定比苏牙贵，因为苏牙的场外影响力和知名度都和菲戈卡卡差太远了。小罗，齐达内放到今天的商业价值我给10%的额外加成，大罗20%，小贝35%。综上所述，这几人在今天的转会费大概是大罗（02年4425万欧元转会皇马）×1.16×1.25×1.15×1.15＝8900万欧元玻璃人体质极大影响了他的价格。小罗（03年23岁2800万美元转会巴萨）×2×1.1＝6200万欧元如前所述忽略币种，年轻球员100%的涨幅是一个很保守的估计，实际可能更高，05年的巅峰小罗找不到当年的报价所以没法计算，期待高人补充。齐达内（01年6450万美元转会皇马）×1.16×1.25×1.15×1.1＝11800万欧元不要忘记齐达内转会的时候已经29岁了。贝克汉姆（03年3000万欧元转会皇马）×1.16×1.25×1.15×1.35＝6750万欧元边前卫本来就价格偏低，而且联盟皇马时小贝巅峰已过，这个价格已经相当了不起了。最后补一个惊天bug人物——布冯（01年5400万欧元转会尤文）×2×1.1＝11900万欧元价值一亿两千万的门将，我选择死亡', '2016-06-24 18:38:45', '3', '13');

-- ----------------------------
-- Table structure for `fsanswer`
-- ----------------------------
DROP TABLE IF EXISTS `fsanswer`;
CREATE TABLE `fsanswer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(11) DEFAULT NULL,
  `SID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKFSAnswerFID` (`FID`),
  KEY `FKFSAnswerSID` (`SID`),
  CONSTRAINT `FKAnswerFID` FOREIGN KEY (`FID`) REFERENCES `answer` (`ID`),
  CONSTRAINT `FKAnswerSID` FOREIGN KEY (`SID`) REFERENCES `answer` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fsanswer
-- ----------------------------
INSERT INTO `fsanswer` VALUES ('1', '3', '4');
INSERT INTO `fsanswer` VALUES ('2', '3', '5');
INSERT INTO `fsanswer` VALUES ('3', '3', '6');
INSERT INTO `fsanswer` VALUES ('4', '8', '9');
INSERT INTO `fsanswer` VALUES ('5', '10', '11');
INSERT INTO `fsanswer` VALUES ('6', '12', '14');
INSERT INTO `fsanswer` VALUES ('7', '12', '15');
INSERT INTO `fsanswer` VALUES ('8', '22', '24');
INSERT INTO `fsanswer` VALUES ('9', '22', '25');

-- ----------------------------
-- Table structure for `fstopic`
-- ----------------------------
DROP TABLE IF EXISTS `fstopic`;
CREATE TABLE `fstopic` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(11) DEFAULT NULL,
  `SID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKFSTopicSID` (`SID`),
  KEY `FKFSTopicFID` (`FID`),
  CONSTRAINT `FKFSTopicFID` FOREIGN KEY (`FID`) REFERENCES `topic` (`ID`),
  CONSTRAINT `FKFSTopicSID` FOREIGN KEY (`SID`) REFERENCES `topic` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fstopic
-- ----------------------------
INSERT INTO `fstopic` VALUES ('3', '6', '16');
INSERT INTO `fstopic` VALUES ('4', '7', '6');
INSERT INTO `fstopic` VALUES ('5', '7', '8');
INSERT INTO `fstopic` VALUES ('6', '6', '19');
INSERT INTO `fstopic` VALUES ('7', '9', '11');
INSERT INTO `fstopic` VALUES ('8', '9', '12');
INSERT INTO `fstopic` VALUES ('9', '9', '13');
INSERT INTO `fstopic` VALUES ('11', '16', '18');
INSERT INTO `fstopic` VALUES ('12', '16', '19');
INSERT INTO `fstopic` VALUES ('13', '9', '14');
INSERT INTO `fstopic` VALUES ('14', '50', '7');
INSERT INTO `fstopic` VALUES ('15', '49', '50');
INSERT INTO `fstopic` VALUES ('16', '49', '51');
INSERT INTO `fstopic` VALUES ('17', '49', '52');
INSERT INTO `fstopic` VALUES ('18', '1', '21');
INSERT INTO `fstopic` VALUES ('19', '1', '2');
INSERT INTO `fstopic` VALUES ('20', '1', '3');
INSERT INTO `fstopic` VALUES ('21', '1', '33');
INSERT INTO `fstopic` VALUES ('22', '1', '30');
INSERT INTO `fstopic` VALUES ('23', '21', '22');
INSERT INTO `fstopic` VALUES ('24', '21', '30');
INSERT INTO `fstopic` VALUES ('25', '1', '41');
INSERT INTO `fstopic` VALUES ('26', '22', '26');
INSERT INTO `fstopic` VALUES ('27', '22', '27');
INSERT INTO `fstopic` VALUES ('28', '26', '28');
INSERT INTO `fstopic` VALUES ('29', '26', '29');
INSERT INTO `fstopic` VALUES ('30', '22', '25');
INSERT INTO `fstopic` VALUES ('31', '29', '23');
INSERT INTO `fstopic` VALUES ('32', '29', '24');
INSERT INTO `fstopic` VALUES ('33', '30', '31');
INSERT INTO `fstopic` VALUES ('34', '30', '32');
INSERT INTO `fstopic` VALUES ('35', '31', '34');
INSERT INTO `fstopic` VALUES ('36', '31', '35');
INSERT INTO `fstopic` VALUES ('37', '31', '36');
INSERT INTO `fstopic` VALUES ('38', '1', '37');
INSERT INTO `fstopic` VALUES ('39', '37', '33');
INSERT INTO `fstopic` VALUES ('40', '37', '38');
INSERT INTO `fstopic` VALUES ('41', '37', '39');
INSERT INTO `fstopic` VALUES ('42', '37', '40');
INSERT INTO `fstopic` VALUES ('43', '41', '42');
INSERT INTO `fstopic` VALUES ('44', '41', '45');
INSERT INTO `fstopic` VALUES ('45', '42', '43');
INSERT INTO `fstopic` VALUES ('46', '42', '44');
INSERT INTO `fstopic` VALUES ('47', '45', '46');
INSERT INTO `fstopic` VALUES ('48', '45', '47');
INSERT INTO `fstopic` VALUES ('49', '45', '48');
INSERT INTO `fstopic` VALUES ('50', '3', '4');
INSERT INTO `fstopic` VALUES ('51', '3', '5');
INSERT INTO `fstopic` VALUES ('52', '30', '37');
INSERT INTO `fstopic` VALUES ('53', '27', '31');
INSERT INTO `fstopic` VALUES ('54', '27', '32');
INSERT INTO `fstopic` VALUES ('55', '9', '14');
INSERT INTO `fstopic` VALUES ('56', '6', '10');
INSERT INTO `fstopic` VALUES ('57', '1', '49');

-- ----------------------------
-- Table structure for `qtp`
-- ----------------------------
DROP TABLE IF EXISTS `qtp`;
CREATE TABLE `qtp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TPID` int(11) DEFAULT NULL,
  `QID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKQstpTPID` (`TPID`),
  KEY `FKQstpQID` (`QID`),
  CONSTRAINT `FKQTPQID` FOREIGN KEY (`QID`) REFERENCES `question` (`ID`),
  CONSTRAINT `FKQTPTPID` FOREIGN KEY (`TPID`) REFERENCES `topic` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qtp
-- ----------------------------
INSERT INTO `qtp` VALUES ('1', '47', '1');
INSERT INTO `qtp` VALUES ('2', '10', '2');
INSERT INTO `qtp` VALUES ('3', '11', '3');
INSERT INTO `qtp` VALUES ('4', '12', '4');
INSERT INTO `qtp` VALUES ('5', '13', '5');
INSERT INTO `qtp` VALUES ('6', '13', '6');
INSERT INTO `qtp` VALUES ('7', '25', '7');
INSERT INTO `qtp` VALUES ('8', '25', '8');
INSERT INTO `qtp` VALUES ('9', '34', '15');
INSERT INTO `qtp` VALUES ('10', '24', '7');
INSERT INTO `qtp` VALUES ('11', '24', '8');
INSERT INTO `qtp` VALUES ('12', '24', '9');
INSERT INTO `qtp` VALUES ('13', '24', '10');
INSERT INTO `qtp` VALUES ('14', '34', '13');
INSERT INTO `qtp` VALUES ('15', '34', '14');
INSERT INTO `qtp` VALUES ('16', '6', '1');
INSERT INTO `qtp` VALUES ('17', '6', '2');
INSERT INTO `qtp` VALUES ('18', '6', '3');
INSERT INTO `qtp` VALUES ('19', '6', '4');
INSERT INTO `qtp` VALUES ('20', '6', '5');
INSERT INTO `qtp` VALUES ('21', '6', '6');
INSERT INTO `qtp` VALUES ('22', '6', '11');
INSERT INTO `qtp` VALUES ('23', '6', '12');
INSERT INTO `qtp` VALUES ('24', '21', '7');
INSERT INTO `qtp` VALUES ('25', '21', '8');
INSERT INTO `qtp` VALUES ('26', '21', '9');
INSERT INTO `qtp` VALUES ('27', '21', '10');
INSERT INTO `qtp` VALUES ('28', '22', '7');
INSERT INTO `qtp` VALUES ('29', '22', '8');
INSERT INTO `qtp` VALUES ('30', '22', '9');
INSERT INTO `qtp` VALUES ('31', '22', '10');
INSERT INTO `qtp` VALUES ('32', '26', '7');
INSERT INTO `qtp` VALUES ('33', '26', '8');
INSERT INTO `qtp` VALUES ('34', '26', '9');
INSERT INTO `qtp` VALUES ('35', '26', '10');
INSERT INTO `qtp` VALUES ('36', '21', '13');
INSERT INTO `qtp` VALUES ('37', '21', '14');
INSERT INTO `qtp` VALUES ('38', '21', '15');

-- ----------------------------
-- Table structure for `qu`
-- ----------------------------
DROP TABLE IF EXISTS `qu`;
CREATE TABLE `qu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UID` int(11) DEFAULT NULL,
  `QID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKQUUID` (`UID`),
  KEY `FKQUQID` (`QID`),
  CONSTRAINT `FKQUQID` FOREIGN KEY (`QID`) REFERENCES `question` (`ID`),
  CONSTRAINT `FKQUUID` FOREIGN KEY (`UID`) REFERENCES `userinfo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qu
-- ----------------------------

-- ----------------------------
-- Table structure for `question`
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `qstitle` varchar(255) DEFAULT NULL,
  `qscontent` mediumtext,
  `qstime` datetime DEFAULT NULL,
  `qsuser` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKQuestionUID` (`qsuser`),
  CONSTRAINT `FKQuestionUID` FOREIGN KEY (`qsuser`) REFERENCES `userinfo` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '毕业两年想从事数据分析方面工作该不该考研？', '本人目前是一名前端程序猿，14年毕业，今年24，从编程中获得许多乐趣。事情起源于，一直向往数据分析这块，用自学的爬虫爬过很多网站，然后感觉光有数据不够还得有分析方法，于是又自学了《统计学习方法》跟《集体智慧编程》，于是对机器学习有了初步的了解。在学习过程中越发觉得对两个方向缺失，一个是数学确切来说是统计学相关的知识，一个是算法数据结构相关的知识。(本人大学一普通211，学材料，大学天天浪，现在就是在为之前的贪玩填坑。)\r\n但自己也发现，这两个方向需要集中一段具体的时间来研究学习（这很关键），而且之前都是自学也不系统，现在每天工作到九点，感觉很缺乏时间，并且，想把数据分析数据挖掘作为今后方向。于是，想到考研，具体是想考统计学或者计算机方面研究生。请各位大神指教，有没有必要考研，或者关于我现在状况考研会有帮助？', '2016-06-24 13:11:07', '3');
INSERT INTO `question` VALUES ('2', '作为一名软件测试人员，有哪些网站是你应该多多关注的，哪些书籍是你必须要看的？', '本人想要通过关注一些网站了解软件测试行业的最新动态，时下流行技术，工具，语言，方法等等，能帮我做好职业规划。测试方面的书籍，哪些又是必须要看的呢？本人现在在做功能测试，以后想转白盒或者自动化，该如何下手，如何准备？', '2016-06-24 17:24:06', '2');
INSERT INTO `question` VALUES ('3', 'Web前端的路该怎么走？', '其实一开始没想到会有那么多人回答，我相信我能从各位的回答中找到我想要的，并且找到我自己的路。谢谢各位前辈的指点。\r\n------------------------------------------------------------------------------------------------------------------------------------------\r\n刚刚毕业，在公司一直做的是前端开发，之前都是自己去学习一些基础的前端知识（html+css+js）。到现在越来越迷茫，不知道自己该去学哪方面的。 在学校学的都是一些基础知识，毕业之后自己自学了JavaScript，在这个公司，要求不高能搭页面就行，可是我想提升自己。.求各位前辈指点！\r\n其实一开始没想到会有那么多人回答，我相信我能从各位的回答中找到我想要的，并且找到我自己的路。谢谢各位前辈的指点。\r\n------------------------------------------------------------------------------------------------------------------------------------------\r\n刚刚毕业，在公司一直做的是前端开发，之前都是自己去学习一些基础的前端知识（html+css+js）。到现在越来越迷茫，不知道自己该去学哪方面的。 在学校学的都是一些基础知识，毕业之后自己自学了JavaScript，在这个公司，要求不高能搭页面就行，可是我想提升自己。.求各位前辈指点！\r\n其实一开始没想到会有那么多人回答，我相信我能从各位的回答中找到我想要的，并且找到我自己的路。谢谢各位前辈的指点。\r\n------------------------------------------------------------------------------------------------------------------------------------------\r\n刚刚毕业，在公司一直做的是前端开发，之前都是自己去学习一些基础的前端知识（html+css+js）。到现在越来越迷茫，不知道自己该去学哪方面的。 在学校学的都是一些基础知识，毕业之后自己自学了JavaScript，在这个公司，要求不高能搭页面就行，可是我想提升自己。.求各位前辈指点！', '2016-06-24 17:32:03', '4');
INSERT INTO `question` VALUES ('4', '一心只玩 linux 的学生毕业后适合什么工作？ ', '大学中，对于java开发神马的不感冒，一心只玩linux，请问毕业后有什么适合的岗位吗？\r\n\r\n最近先是折腾gentoo又开始折腾lfs，感觉还是很爽的，主要是自己玩的爽。说到创造价值的话。。。。折腾这些除了自己玩的爽貌似没什么实际价值。。。再一想到将来找工作。。。。于是产生了疑惑，希望您能给予一些帮助。\r\n我的下一步想法是理解计算机组成和原理（方式是研读《深入理解计算机系统》），然后理解linux的工作原理和相应的API（通过查阅操作系统相关资料以及linux开发实践），如果依旧兴趣不减的话根据系统功能按个人兴趣阅读部分源码。实现时间一年到一年半左右。这是我个人对于我大学仅剩的一年半中的自由时间的总体规划。我想请教您如果我这么玩下来，毕业后哪些公司的什么岗位会比较适合我？\r\n补充一下：对C/C++情有独钟。。。', '2016-06-24 17:46:59', '9');
INSERT INTO `question` VALUES ('5', 'iOS 开发怎么入门？', '请问有设计模式、内存管理方面的资料吗？最好有除了官方文档之外的其它内容，', '2016-06-24 17:55:15', '5');
INSERT INTO `question` VALUES ('6', 'GitHub 上都有哪些值得关注学习的 iOS 开源项目？ ', '如果仅按照 GitHub 月流行查看 Objective-C 项目的话有 ── Trending Objective-C repositories on GitHub this month', '2016-06-24 17:56:29', '7');
INSERT INTO `question` VALUES ('7', '宿舍里只有你自己不玩网游（英雄联盟、dota等等）是一种怎样的体验？', '大学四年即将毕业，宿舍里来自天南海北的六个人也都从青射小骚年变成了毕业狗。\r\n刚刚来时都不玩网游的，知道现在其他五个人都陆陆续续的开始“战斗”了。\r\n或许是大学生活的无聊?特别是即将毕业的日子里？\r\n很烦他们没日没夜的开黑，打扰休息就不提了，毕竟面临毕业，这些都能谅解。\r\n只是不明白，为什么现在这么多人要寄情于此？\r\n从大一到现在，对于游戏我简直是个白痴。但是四年的时间用来读书、学习、交友、思考，也收获很多很多。\r\n记得一个知乎问题问“坚持做自己是一种怎样的体验”？令我深刻的就是两个字“孤独”。\r\n不想去为了迎合、为了融入、为了共同话题去接触网游，但是现在明显感到有些格格不入。在大多数时间里，他们都在开黑开黑开黑。\r\n我则一旁或无声看看网页，要不干脆出去转转。\r\n这样的情况我该怎么办呢？如何看待现在中青年里狂热的网友追求？我觉得这很可怕啊\r\n——————————————————————————————————————————\r\n看到大家的回复我再补充两点啊，首先我们宿舍关系还是蛮好的，大家日常生活融洽，何况这就要毕业分别来，甚至比以往都更和谐。其次，我说这种现象不是很可怕么？青年整天在游戏世界里，怎么比得上那个谈理想聊人生的时代，往大点说这个国家的未来是不是。。。。（恩，我就是这样想的）', '2016-06-24 18:07:46', '4');
INSERT INTO `question` VALUES ('8', '为什么那么多人沉迷于英雄联盟这款腾讯网络游戏？', '尤其是很多人一放假就整天在家玩LOL，下班玩到睡觉的人真的很多。那么，LOL的魅力在于哪里？？？自己喜欢的角色，不能养成，只能持续这么短时间，自己喜欢的角色每次都是1级开始不觉得难过吗？？', '2016-06-24 18:10:36', '7');
INSERT INTO `question` VALUES ('9', '大型网游比如魔兽世界、英雄联盟，为何要在拥挤时让用户排队？', '用户排队过程中是为了等待游戏中的其他人退出还是等待什么？', '2016-06-24 18:11:04', '8');
INSERT INTO `question` VALUES ('10', '论网游对大学生的影响，例如英雄联盟?', '论网游对大学生的影响，例如英雄联盟?', '2016-06-24 18:11:34', '9');
INSERT INTO `question` VALUES ('11', '由编程的接口设计想到人的工作效率问题？', 'java编程语言的接口是，内部可以随意操作，只要接口输出的是指定类型的东西就可以了。\r\n那联想到人的工作效率方面，公司内部的人是不是也应该像接口一样，人与人之间工作上的交流只要求其给出指定的结果而不用管其是如何实现的？这样是不是能提高工作效率呢？', '2016-06-24 18:26:29', '12');
INSERT INTO `question` VALUES ('12', '代码耦合是怎么回事呢？', '耦合，谁之错？业务耦合，架构耦合，代码耦合，依次产生，前者是后者的催化剂，最终结果是系统严重耦合，无法适应任何变化。\r\n这其中，业务耦合是根本，必须从根防治与修正，否则没有用，只会越来越差，最终崩塌。\r\n当然，耦合也要从业务、架构、代码三个层面抓起，在每个层面减少耦合，为后面减少耦合打好基础。', '2016-06-24 18:26:27', '11');
INSERT INTO `question` VALUES ('13', '罗尼，小罗，齐达内，贝克汉姆！他们如果放到通货膨胀的这个年代，身价应该值多少？', '罗纳尔多，罗纳尔迪尼奥，贝克汉姆，齐达内这四个超级巨星在通货膨胀的这个年代踢职业比赛，客观身价应该值多少？和梅西与c罗 内马尔比谁多谁少？', '2016-06-24 18:26:24', '10');
INSERT INTO `question` VALUES ('14', '英国脱欧后，对英国体育的发展会有哪些影响？', '比如博斯曼法案，劳工证等？还有板球等运动？', '2016-06-24 18:26:22', '9');
INSERT INTO `question` VALUES ('15', '英国退欧后会对英超产生什么影响？', '比如，博斯曼法案会失效吗？影响如何？', '2016-06-24 18:26:20', '8');

-- ----------------------------
-- Table structure for `tag`
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tgname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------

-- ----------------------------
-- Table structure for `topic`
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tpname` varchar(255) DEFAULT NULL,
  `tpdetail` varchar(255) DEFAULT NULL,
  `tptag` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKTopicTGID` (`tptag`),
  CONSTRAINT `FKTopicTGID` FOREIGN KEY (`tptag`) REFERENCES `tag` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('1', '根话题', null, null);
INSERT INTO `topic` VALUES ('2', '吃喝玩乐', null, null);
INSERT INTO `topic` VALUES ('3', '旅行', '最美的景色永远在远方，再远的脚步也走不出心房', null);
INSERT INTO `topic` VALUES ('4', '旅行计划', null, null);
INSERT INTO `topic` VALUES ('5', '旅行攻略', null, null);
INSERT INTO `topic` VALUES ('6', '软件工程', null, null);
INSERT INTO `topic` VALUES ('7', '计算机科学', null, null);
INSERT INTO `topic` VALUES ('8', '编译原理', null, null);
INSERT INTO `topic` VALUES ('9', '软件开发', null, null);
INSERT INTO `topic` VALUES ('10', '软件测试', null, null);
INSERT INTO `topic` VALUES ('11', ' 前端开发', null, null);
INSERT INTO `topic` VALUES ('12', 'LINUX开发', null, null);
INSERT INTO `topic` VALUES ('13', 'IOS开发', null, null);
INSERT INTO `topic` VALUES ('14', 'Andriod开发', null, null);
INSERT INTO `topic` VALUES ('15', '软件测试', null, null);
INSERT INTO `topic` VALUES ('16', '软件设计', null, null);
INSERT INTO `topic` VALUES ('17', '接口设计', null, null);
INSERT INTO `topic` VALUES ('18', '面向对象设计', null, null);
INSERT INTO `topic` VALUES ('19', 'ＵＭＬ', null, null);
INSERT INTO `topic` VALUES ('20', '软件测试', null, null);
INSERT INTO `topic` VALUES ('21', '娱乐', '　', null);
INSERT INTO `topic` VALUES ('22', '游戏', null, null);
INSERT INTO `topic` VALUES ('23', '单机游戏', null, null);
INSERT INTO `topic` VALUES ('24', '网络游戏', null, null);
INSERT INTO `topic` VALUES ('25', '游戏竞技', null, null);
INSERT INTO `topic` VALUES ('26', '电子游戏', null, null);
INSERT INTO `topic` VALUES ('27', '运动游戏', null, null);
INSERT INTO `topic` VALUES ('28', '手机游戏', null, null);
INSERT INTO `topic` VALUES ('29', '电脑游戏', null, null);
INSERT INTO `topic` VALUES ('30', '运动', null, null);
INSERT INTO `topic` VALUES ('31', '足球', null, null);
INSERT INTO `topic` VALUES ('32', '篮球', null, null);
INSERT INTO `topic` VALUES ('33', '健身', null, null);
INSERT INTO `topic` VALUES ('34', '足球赛事', null, null);
INSERT INTO `topic` VALUES ('35', '足球俱乐部', null, null);
INSERT INTO `topic` VALUES ('36', '足球规则', null, null);
INSERT INTO `topic` VALUES ('37', '健康', null, null);
INSERT INTO `topic` VALUES ('38', '身体健康', null, null);
INSERT INTO `topic` VALUES ('39', '心理健康', null, null);
INSERT INTO `topic` VALUES ('40', '饮食健康', null, null);
INSERT INTO `topic` VALUES ('41', '文化', null, null);
INSERT INTO `topic` VALUES ('42', '动漫', null, null);
INSERT INTO `topic` VALUES ('43', '日本动漫', null, null);
INSERT INTO `topic` VALUES ('44', '国漫', null, null);
INSERT INTO `topic` VALUES ('45', '教育', null, null);
INSERT INTO `topic` VALUES ('46', '大学', null, null);
INSERT INTO `topic` VALUES ('47', '考研', null, null);
INSERT INTO `topic` VALUES ('48', '儿童教育', null, null);
INSERT INTO `topic` VALUES ('49', '科技', null, null);
INSERT INTO `topic` VALUES ('50', '现代科学技术', null, null);
INSERT INTO `topic` VALUES ('51', '黑科技', null, null);
INSERT INTO `topic` VALUES ('52', '生物科技', null, null);

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `upwd` varchar(64) DEFAULT NULL,
  `ucontent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'tiaoyu', 'include', 'come，baby！');
INSERT INTO `userinfo` VALUES ('2', '盖伦', 'include', '人在塔在！');
INSERT INTO `userinfo` VALUES ('3', '萧井陌 ', 'include', '微信公众号：炼瓜研究所 技术社区');
INSERT INTO `userinfo` VALUES ('4', 'EZ', 'include', null);
INSERT INTO `userinfo` VALUES ('5', null, null, null);
INSERT INTO `userinfo` VALUES ('6', null, null, null);
INSERT INTO `userinfo` VALUES ('7', null, null, null);
INSERT INTO `userinfo` VALUES ('8', null, null, null);
INSERT INTO `userinfo` VALUES ('9', null, null, null);
INSERT INTO `userinfo` VALUES ('10', null, null, null);
INSERT INTO `userinfo` VALUES ('11', null, null, null);
INSERT INTO `userinfo` VALUES ('12', null, null, null);
INSERT INTO `userinfo` VALUES ('13', null, null, null);
INSERT INTO `userinfo` VALUES ('14', null, null, null);
INSERT INTO `userinfo` VALUES ('15', null, null, null);
INSERT INTO `userinfo` VALUES ('16', null, null, null);
INSERT INTO `userinfo` VALUES ('17', null, null, null);
INSERT INTO `userinfo` VALUES ('18', null, null, null);
INSERT INTO `userinfo` VALUES ('19', null, null, null);

-- ----------------------------
-- Table structure for `utp`
-- ----------------------------
DROP TABLE IF EXISTS `utp`;
CREATE TABLE `utp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TPID` int(11) DEFAULT NULL,
  `UID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKUTPUID` (`UID`),
  KEY `FKUTPTPID` (`TPID`),
  CONSTRAINT `FKUTPTPID` FOREIGN KEY (`TPID`) REFERENCES `topic` (`ID`),
  CONSTRAINT `FKUTPUID` FOREIGN KEY (`UID`) REFERENCES `userinfo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of utp
-- ----------------------------
