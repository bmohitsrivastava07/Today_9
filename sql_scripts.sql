use artgallerymanagement;
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `artist` varchar(45) DEFAULT NULL,
  `product_description` text DEFAULT NULL,
  `quantities` int(11) DEFAULT NULL,
  `quantity_available` int(11) DEFAULT NULL,
  `category` varchar(11) DEFAULT NULL,
  `image` MEDIUMBLOB  DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ;

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `review_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(45) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `rating` decimal (3,2) DEFAULT NULL,
  `product_id` BIGINT(20) DEFAULT NULL,
  `review_description` text DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ;   
DROP TABLE IF EXISTS `checkout`;
CREATE TABLE `checkout` (
  `checkout_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(45) DEFAULT NULL,
  `checkout_date` varchar(45) DEFAULT NULL,
  `return_date` varchar(45) DEFAULT NULL,
  `product_id` BIGINT(20) DEFAULT NULL,
  PRIMARY KEY (`checkout_id`)
);
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `message_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `admin_email` varchar(45) DEFAULT NULL,
  `response` text DEFAULT NULL,
  `closed` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`message_id`)
)  ;
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `history_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(45) DEFAULT NULL,
  `checkout_date` varchar(45) DEFAULT NULL,
  `returned_date` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `artist` varchar(45) DEFAULT NULL,
  `product_description` text DEFAULT NULL,
  `image` MEDIUMBLOB  DEFAULT NULL,
  PRIMARY KEY (`history_id`)
) ;
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
`payment_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
`user_email` VARCHAR(45) DEFAULT NULL,
`amount` DECIMAL (10,2) DEFAULT NULL,
PRIMARY KEY (`payment_id`)
)
select * from product;
select * from review;
select * from checkout;
select * from history;
select * from messages;
select * from payment;
insert into product values(1,"Jumbled","Ankita","It is a awesome digital art.",10,7,"Digital Art","https://th.bing.com/th/id/R.6fced17d42d87c0449f968064229f751?rik=l4cSS%2fre%2fDzPsQ&riu=http%3a%2f%2fimg.xcitefun.net%2fusers%2f2010%2f03%2f155474%2cxcitefun-digital-art-6.jpg&ehk=ykIcGvq%2b3I%2b9KiOuHchAAvrwLb7TlbKR%2bRauMKSdmbc%3d&risl=&pid=ImgRaw&r=0");
insert into product values(1,"Tree With Swing","Mohit","It is a very famous digital art.",10,7,"Digital Art","https://i.pinimg.com/originals/34/2e/10/342e103d5e4df54d3a49d5a8b154e972.jpg");
insert into product values(1,"A Girl","Sudha Gupta","It is a very famous digital art.",10,7,"Digital Art","https://i.redd.it/8orgu4xmqou01.jpg");
insert into product values(1,"Man Is On Hill","Ganga Devi","It is a beautiful digital art.",10,7,"Digital Art","https://w.wallhaven.cc/full/13/wallhaven-13x79v.jpg");
insert into product values(1,"A Woman","ShyamLata ","It is a beautiful digital art.",10,7,"Digital Art","https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/124799550/original/9973dabda5f1d29bbc2156694a4927d2d045dc3d/do-masterpiece-work-of-digital-painting-background-portrait.jpg");


insert into product values(2,"Galaxy Having Flower","Ankita","It is a awesome spray art.",10,7,"Spray Art","https://th.bing.com/th/id/R.5e620ab0b76c308b07de1f1714865dc3?rik=1bXorc30jK%2fWJw&riu=http%3a%2f%2fimages.fanpop.com%2fimages%2fimage_uploads%2fSpray-Painting-painting-743312_1873_1515.jpg&ehk=0KMTCuaxXJtsY8AywyBPU3R3U7Oj8ZExZvKD2RLBtS0%3d&risl=&pid=ImgRaw&r=0");
insert into product values(2,"","Mohit","It is a beautiful spray art.",10,7,"https://th.bing.com/th/id/OIP.1bwKnb9kmDGIyZKodYoIVAHaFj?pid=ImgDet&rs=1");
insert into product values(2,"Scenery","Nitin Srivastava","It is a very famous spray art.",10,7,"https://i.pinimg.com/736x/12/20/b5/1220b5764bd0aba341761194bdc7cafe--spray-paint-artwork-spray-painting.jpg");
insert into product values(2,"Scenery","Tanu Bansal","It is a unique spray art.",10,7,"Spray Art","https://th.bing.com/th/id/R.0f4037c35e6f6c5c2e1479d91cc7f891?rik=AJr5RDKmS2U75g&riu=http%3a%2f%2freachingutopia.com%2fwp-content%2fuploads%2f2013%2f03%2fNature-Spray-Painting.jpg&ehk=nt92Mz9lrqBsYxZXXSaDUwWK4Pq3PhEnXzsuFucFXMU%3d&risl=&pid=ImgRaw&r=0");
insert into product values(2,"Buildings","Shagun Gupta","It is a awesome spray art.",10,7,"Spray Art","https://upload.wikimedia.org/wikipedia/commons/9/9c/Cclark_spraypaint2.jpg");


insert into product values(3,"Flower","Ankita","It is a awesome mandala art.",10,7,"Mandala Art","https://i.etsystatic.com/17431888/r/il/c15d19/2139799015/il_fullxfull.2139799015_hpmn.jpg");
insert into product values(3,"Flower","Mahek Gupta","It is a good mandala art.",10,7,"Mandala Art","https://i.pinimg.com/originals/c7/42/fb/c742fbfe6e5d47eb11f4a388b5e9c082.jpg");
insert into product values(3,"Sector Design","Nena Kumari","It is a most famous mandala art.",10,7,"Mandala Art","https://i.pinimg.com/originals/43/ad/2c/43ad2c2654eba32454731d7a06270e1a.jpg");
insert into product values(3,"Butterfly","Nishant Gupta","It is a beautiful amandala art.",10,7,"Mandala Art","https://i.etsystatic.com/26502684/r/il/0687b2/2783474047/il_fullxfull.2783474047_a4co.jpg");
insert into product values(3,"Scenery Within Circle","Eti Kumari","It is a unique mandala art.",10,7,"Mandala Art","https://th.bing.com/th/id/R.38392661b508670859678765edb0e439?rik=0OyMbg%2bL7vtvHA&riu=http%3a%2f%2f3.bp.blogspot.com%2f-1Nw52Ipozj8%2fUeK7VQISIMI%2fAAAAAAAAUZo%2ffa6pNL3rEqM%2fs1600%2fmandala%2bdrawing%2bprint%2bfall%2bequinox.jpg&ehk=2lOffG8MBAC7qetFOwDkRbPopLF0jv5OYKazXRVfZ%2fI%3d&risl=&pid=ImgRaw&r=0");
insert into product values(3,"Flower","Anjali Singh","It is a awesome mandala art.",10,7,"Mandala Art","https://th.bing.com/th/id/OIP.0HYoZr8qgs2E_fBFJ4NE-wHaHN?pid=ImgDet&rs=1");


insert into product values(4,"Scenery With Bridge","Ankita S","It is a awesome oil painting art.",110,60,"Oil Painting Art","https://afremov.com/images/product/image_1470.jpeg");
insert into product values(4,"Scenery With Road View","Sherya Gupta","It is a awesome oil painting art.",90,50,"Oil Painting Art","https://th.bing.com/th/id/OIP.zZ5bcDu9q-1b5zrX1AL5DQHaFj?pid=ImgDet&rs=1");
insert into product values(4,"Light House","Arsh Goel","It is a awesome oil painting art.",70,60,"Oil Painting Art","https://th.bing.com/th/id/R.657e4c0cab0bc004106d5c5d1dbcff02?rik=hmW46rIkBasSFw&riu=http%3a%2f%2fimages.freecreatives.com%2fwp-content%2fuploads%2f2015%2f06%2fbest-oil-painitng-collection.jpg&ehk=fOAI8Bq8QoDQV3kOIrVDwPFEZ%2ftbABMUKPRVRn62gIk%3d&risl=&pid=ImgRaw&r=0");
insert into product values(4,"Trees","Tushar Goel","It is a awesome oil painting art.",50,30,"Oil Painting Art","https://th.bing.com/th/id/R.e8d8db1460bc4b21115c770081a0c003?rik=1u4WAA4%2fm2TgwQ&riu=http%3a%2f%2f1.bp.blogspot.com%2f-ED-B87Tr7F0%2fT1HMNzCemII%2fAAAAAAAAAqA%2fb9IZdY1Itdg%2fs1600%2fAutumn%2bOil%2bPaintings%2b4.jpg&ehk=HzL72hzQE7Ic0sID9AhXnMZvEfL%2fwQpvr5%2f7nbWRDts%3d&risl=&pid=ImgRaw&r=0");
insert into product values(4,"God","Taruni Anand","It is a awesome oil painting art.",30,10,"Oil Painting Art","https://th.bing.com/th/id/R.895b8e06a57fb2c43e8dae19e0771c90?rik=YYdliOsl%2fcJzrQ&riu=http%3a%2f%2f1.bp.blogspot.com%2f-Xy2SYb4EMMM%2fUVfKkj48MtI%2fAAAAAAABCuM%2fH2rSaiBBzxc%2fs1600%2fMasterpiece%2bOil%2bPainting%2bFine%2bArts%2b(3).jpg&ehk=Me6Ny3rSXB1jgtDzl3K76VflLSh1km0MFLx3H232Xzw%3d&risl=&pid=ImgRaw&r=0");


insert into product values(5,"Scenery","Ankita","It is a awesome crayon art.",50,20,"Crayon Art","https://www.desipainters.com/dp/08/29778/29778.jpg");
insert into product values(5,"Girl On The Hill","Simran Kumari","It is a awesome crayon art.",40,20,"Crayon Art","https://th.bing.com/th/id/OIP.cRKAcfKzjhoJOqsrbqy5xQHaFX?pid=ImgDet&rs=1");
insert into product values(5,"Raining Scenery","Renu Goel","It is a awesome crayon art.",20,10,"Crayon Art","https://th.bing.com/th/id/R.e2977c09d0304774074e73eecf4e71d2?rik=4NnzMfVhaa9pow&riu=http%3a%2f%2fkidskubby.com%2fwp-content%2fuploads%2f2012%2f09%2fMelted-Crayon-Painting.001.jpg&ehk=3Q2FfBq4FqUvKrlSSLE74nIVm5hYR2ktCm5WVg1gAqw%3d&risl=&pid=ImgRaw&r=0");
insert into product values(5,"Hand","Naveen Kumar","It is a awesome crayon art.",100,80,"Crayon Art","https://th.bing.com/th/id/R.b39cd2e1ea2558b38ae3f4094bbccec7?rik=aRUrmBw34LU%2fzw&riu=http%3a%2f%2fs6.favim.com%2forig%2f65%2fart-crayons-photography-Favim.com-572765.jpg&ehk=IZIhD8x6nGTrpCqQiQzYI0AkyykL6LWUv2ESERJJMxo%3d&risl=&pid=ImgRaw&r=0");





