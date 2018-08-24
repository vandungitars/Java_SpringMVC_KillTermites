-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: kill_termites
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `NEWS`
--

DROP TABLE IF EXISTS `NEWS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NEWS` (
  `idnews` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `image` char(100) DEFAULT NULL,
  `timeupdate` varchar(100) DEFAULT NULL,
  `describes` text,
  `content` longtext,
  PRIMARY KEY (`idnews`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NEWS`
--

LOCK TABLES `NEWS` WRITE;
/*!40000 ALTER TABLE `NEWS` DISABLE KEYS */;
INSERT INTO `NEWS` VALUES (1,'Tìm Hiểu Loài Mối','con_moi.jpg','23-08-2018','Trước khi bạn có thể bắt đầu quá trình phòng chống mối mọt, bạn sẽ cần phải chắc chắn rằng mình đang đối phó với mối chứ không phải kiến. Những loài côn trùng thường bị nhầm lẫn bởi vì chúng có chung nhiều đặc điểm và mối thường hoạt động những kiểu như loài kiến. Những đặc điểm sau đây có thể được sử dụng để giúp bạn phân biệt được mối và kiến.','Mối là một loại côn trùng xã hội đa hình thái. Do sự chuyển hóa về chức năng, mối phân hóa thành các dạng khác nhau về hình dạng và cấu tạo cơ thể: mối vua, mối chúa, mối cánh, mối lính, mối thợ trong cùng một đàn. Mối sinh sản là các dạng mối có khả năng sinh sản như mối cánh trưởng thành, mối chúa, mối vua. Mối vô sinh là các dạng không có khả năng sinh sản hoặc cơ quan sinh dục đã bị tiêu giảm như mối lính, mối thợ.\n  \nLà loài côn trùng, bộ Cánh đều (Isoptera), sống ở các vùng nhiệt đới, hàng năm gây thiệt hại rất lớn cho nhiều loại cây trồng và cho các công trình kiến trúc, kho tàng, đê điều,...(Tại Ấn Độ, ước tính hàng năm trị giá số cây cốc bị mối làm hại tới 280 triệu rupi).\n\nCơ thể mối gồm 3 phần: đầu, ngực, bụng với rang giới rõ rệt, dính nhau bằng các tấm màng đệm, vỏ cơ thể có cấu tạo cutin rắn chắc nhưng rất mềm dẻo ở phần giữa các đốt và các phần phụ chuyển động.\nMối thường sống thành những tập đoàn lớn. Một số xây tổ ở rất cao. Mối chúa và mối vua (nhỏ hơn mối chúa) sống ở trung tâm của tổ.  \n\nMối chúa trưởng thành có một cơ thể khổng lồ giống như khúc lòng lợn chiều dài 10cm và là một cỗ máy đẻ thực sự. Đôi khi, nó còn đẻ tới hơn 30 trứng trong 1 phút. Nó không thể cử động được và được các mối thợ, dài khoảng 4mm chăm sóc và nuôi dưỡng.\n\n \n\nMối chúa bắt đầu cuộc đời của mình như một con cái giống, với những chiếc cánh. Cùng với nhiều con cái khác và những con đực có cánh, nó bay ra khỏi tổ, nơi nó đã sinh ra. Đó là sự chia đàn. Nó hạ cánh ở một nơi nào đó, hai cánh bị mất đi và kết đôi với một con đực. Như vậy, chúng đã tạo ra được một tập đoàn mới. Sau lần cặp đôi và đẻ trứng đầu tiên, mối chúa chỉ đẻ 5 – 25 trứng, tùy theo loài. Sức sinh sản này tăng dần theo tuổi. Trong 1 tổ mối, có thể có nhiều mối chúa nên sức sinh sản của 1 đàn mối cực kỳ lớn. Một số loài có khả năng duy trì tuổi thọ của đàn tới gần 100 năm.  \n\nMối thợ thường nhỏ hơn các thành viên khác trong đàn nhưng số lượng lại đông hơn. Chúng có nhiệm vụ xây dựng và sửa chữa tổ, chuẩn bj thức ăn và nuôi dưỡng các thành viên khác trong đàn. Chúng coi sóc trứng, ấu trùng và nhộng.\nMối lính lớn hơn nhiều và chúng có cái đầu rất to. Một số mối lính được trang bị bộ hàm giống như một cặp kéo, một số khác lại có một bộ hàm giống như mỏ. Mối lính có nhiệm vụ bảo vệ tổ mối. Kẻ thù chính của mối là kiến. \n\n\n\nTổ mối được mối thợ làm từ đất trộn với nước bọt và phân. Tổ mối được bao bọc bởi 1 lớp tường thành bên ngoài rất cứng. Giữa bức tường thành này và tổ mối được bố trí những đường dẫn cho phép không khí có thể lưu thông được. Phần trung tâm của tổ được chia thành vô số các phòng. Một phòng lớn được dành cho mối chúa liên tục đẻ trứng. Những phòng khác dành để nuôi ấu trùng và nhộng mối. Ngoài ra còn có các nhà kho để đồ dự trữ và các phòng chứa chất thải. Hình thái của tổ mối cũng rất đa dạng: hình quả lê (Macrotermes annandalei), hình tròn (Odontotermes hainanensis), hình vòm, hình tháp, hình phỏng theo dạng hòm, dạng nhà,...\n\nỞ Việt Nam có khoảng 100 loài mối, thuộc các chi Coptotermes, Cryptotermes, Neotermes, Clyptotermes, Hodotermes, Reticulitermes, Shedorhinotermes, Macrotermes, Odontotermes,...Hàng năm, mối gây hại lớn cho các công trình kiến trúc, đê đập, kho tàng và cây trồng. Vì vậy, việc phòng trừ mối cần được quan tâm nhằm giảm thiểu những thiệt hại do mối gây ra.'),(2,'Bí Mật Của Loài Gián','con_gian.png','23-082018','Gián, một con vật \"đáng sợ\" với không ít người và có mặt hầu như trong mỗi gia đình. Gần gũi như thế nhưng chưa chắc bạn đã biết nhiều về con vật sống chung với mình đâu.','Gián xuất hiện từ kỷ Jura\n\nNhững con gián đã xuất hiện trên Trái đất từ kỷ Jura, có nghĩa là loài động vật đáng ghét này từng sinh sống cùng thời với những những con khủng long khoảng hơn 200 triệu năm trước. Ở thời kỳ này cơ thể gián dài khoảng 50cm. Ngày nay, gián nhiệt đới thậm chí vẫn phát triển được tới 18cm\n\nGián chỉ có ký ức 24h\n\nGián chỉ có ký ức 24h, mỗi ngày mới đối với gián đều là ngày đầu tiên trong cuộc đời.\n\nSức sống dai dẳng nhất\n\nGián là những con côn trùng có sức sống dai dẳng nhất, chúng có thể sống mà không cần bổ sung nước trong vòng một tuần, không cần ăn trong vòng một tháng.\n\nGián có thể sống sót trong một tuần mà không cần đầu của mình. Chúng sống mà không phụ thuộc vào hệ thống hô hấp qua lỗ mũi hoặc khoang miệng của mình, vì chúng có thể thở bằng các lỗ nhỏ ở các phân khúc khác của cơ thể.\n\nGián có thể nín thở trong vòng 40 phút, một năng lực mà đối với con người là siêu nhiên. Họ hàng nhà gián có thể sống sót trong một vụ nổ hạt nhân. Theo các nghiên cứu, loài côn trùng này có thể chịu được mức bức xạ rất cao, vượt xa mức mà con người có thể chịu đựng.\n\n\n\nLoài gián và những sự thật kinh hoàng ít ai biết. Ảnh minh họa\n\nGián biết giả chết\n\nNếu bạn dùng dép đập một con gián chúng sẽ nằm đơ ra như kiểu đã chết nhưng hãy quan sát một thời gian bạn sẽ bất ngờ đấy. Chúng sẽ lại ngọ nguậy và vẫn sống khỏe như chưa từng có chuyện gì xảy ra.\n\nGián sinh sản không cần con đực\n\nGián không cần có con đực mà vẫn có khả năng sinh sản. Loài gián rất “mắn đẻ”, chúng thường đẻ từ 40-60 con trong một chu kỳ sinh sản. Một số con cái chỉ giao phối 1 lần mà có thể tiếp tục mang thai cả đời.\n\nTốc độ chạy của gián đáng nể\n\nGián có thể chạy với tốc độ 5 km/h, rất ấn tượng khi xét đến cơ thể nhỏ bé (nếu chúng to lớn bằng con người, tốc độ đó sẽ tương đương 700 km/h). Không chỉ vậy, gián còn có khả năng đổi hướng chạy 25 lần trong một giây - thực sự là “xoay như chong chóng”.\n\nGián là loài phàm ăn\n\nGián là loài côn trùng thuộc loại phàm ăn và ăn tạp vì chúng ăn được tất cả các loại thức ăn của con người, nhưng món “khoái khẩu” nhất đối với chúng là các loại thức ăn có chất bột và đường như sữa, bơ, bánh ngọt, sô cô la… Khi không có thức ăn ngon, gián cũng có khả năng ăn cả bìa gáy sách, tủ đựng đồ đạc và trần nhà có chất bột, thậm chí cả đế giày, tấm lót giày, xác lột và xác chết của chúng, máu tươi, máu khô, phân… Tệ hại hơn nữa là nhấm luôn cả móng chân, móng tay của trẻ em, người ốm, người lớn đang ngủ ngon giấc…\n\nGián có trí nhớ\n\nNăm 2007, một nghiên cứu tiến hành ở Nhật cho thấy gián có trí nhớ. Vì thế, ở gián hình thành phản xạ có điều kiện và có thể “dạy dỗ” chúng được. Phản xạ có điều kiện liên quan đến trí nhớ, mà người ta tưởng chỉ động vật có vú mới có. Nhà nghiên cứu luyện cho gián tiết nước bọt mỗi khi bị kích thích hoặc để được uống nước đường, gián phải thực hiện một động tác nào đó.'),(3,'Tìm Hiểu Về Loài Muỗi','con_muoi.jpg','05-08-2018','Muỗi là loài côn trùng đã có ở hành tinh chúng ta khoảng 170 triệu năm và muỗi được phân thành hai họ (Culicidae và Anophelinae), trên thế giới theo khoa học chứng minh thì có khoảng 3.500 loài muỗi.','Muỗi là nổi ám ảnh của mọi người, từ trẻ em cho đến người già, tác hại của chúng gây ra từ nhẹ nhất là gây ngứa, đau do bị chúng đốt đến nặng nhất là tử vong vì những căn bệnh sốt rét, sốt xuất huyết lây truyền bởi chúng. Muốn biết cách phòng chống và tiêu diệt muỗi thì trước hết chúng ta hãy tìm hiểu sơ bộ về chúng.\n\n\n\nMuỗi là một nhóm sinh vật thuộc lớp côn trùng đã tồn tại trên hành tinh của chúng ta khoảng 170 triệu năm. Có trên 3.500 loài muỗi đã được mô tả, chúng được chia thành 2 phân họ với 43 chi.\n\nMuỗi sống chủ yếu ở những khu vực có nước như các đầm lầy, ao hồ hoặc những vũng nước đọng. Nước là môi trường đẻ trứng của chúng, trứng nở thành lăng quăng, còn gọi là bọ gậy. Lăng quăng sống trong nước vài ngày rồi phát triển thành nhộng, rồi biến thành muỗi trưởng thành. Nhiệt độ lý tưởng cho muỗi sinh trưởng và phát triển là khoảng 20 đến 25 độ C. Vì vậy chúng xuất hiện nhiều ở các nước vùng nhiệt đới có nhiều sông hồ, trong đó có Việt Nam.\n\nKhông như quan niệm nhiều người vẫn lầm tưởng, thức ăn bình thường của muỗi là nhựa cây và hoa quả. Muỗi cái cần có nguồn protein để tạo thành trứng, mà thức ăn bình thường không chứa đủ protein cho việc đó. Nên muỗi cái phát triển cái vòi có khả năng xuyên thủng da người và động vật để hút máu. Còn muỗi đực thì không có vòi hút máu mà chỉ ăn nhựa cây và hoa quả.\n\nMuỗi tìm con mồi để hút máu qua mùi vị và nhiệt độ cơ thể. Chúng đặc biệt nhạy cảm với khí CO² có trong hơi thở động vật và một số mùi mồ hôi. Nam giới, người béo và người thuộc nhóm máu O, thu hút muỗi nhiều hơn. Muỗi có khả năng cảm nhận được tia hồng ngoại phát ra từ các sinh vật có thân nhiệt cao nên dễ dàng tìm được đến con người và động vật.\n\nMuỗi là vật trung gian truyền bệnh giữa con người với con người, hay giữa động vật và con người. Các bệnh do muỗi lây truyền như sốt xuất huyết, sốt rét, sốt vàng da... đều có nguy cơ gây tử vong rất cao. Ở Việt Nam, cứ đến mùa hè và mùa mưa thì muỗi sinh sản, phát triển rất mạnh và là nguyên nhân gây nên các dịch bệnh làm tử vong nhiều người, đặc biệt là trẻ em.\n\nNhư vậy là chúng ta đã tìm hiểu sơ bộ về cách sinh trưởng của loài muỗi. Từ những thông tin này, chúng tôi xin giới thiệu dịch vụ phun thuốc diệt muỗi hiệu quả với giá thành hợp lý do CÔNG TY DỊCH VỤ DIỆT MỐI TẬN GỐC TUYỂN LAN cung cập. Quý vị có thể liên hệ số điện thoại : 01649987549. Địa chỉ : Số 27-Trần Cung-Bắc Từ Liêm-Hà Nội.');
/*!40000 ALTER TABLE `NEWS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-24 16:55:44