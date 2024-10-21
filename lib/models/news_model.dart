class NewsModel {
  late final String type;
  late final String title;
  late final String subtitle;
  late final String newsContent;
  late final String postDate;
  late final String isActive;
  late final String imgUrl;

  NewsModel({
    required this.type,
    required this.title,
    required this.subtitle,
    required this.newsContent,
    required this.postDate,
    required this.isActive,
    required this.imgUrl,
  });
}

//Create Model News

List<NewsModel> newsList = [
  NewsModel(
    type: "Tổng hợp",
    title: "Tuyển Việt Nam gặp Malaysia, Indonesia ở AFF Cup 2020",
    subtitle: "Tại buổi lễ bốc thăm AFF Cup 2020 diễn ra chiều 21/9, thầy trò huấn luyện viên Park Hang-seo vào bảng B với sự góp mặt của Malaysia, Indonesia, Campuchia và Lào.",
    newsContent: "Tại buổi lễ bốc thăm AFF Cup 2020 diễn ra chiều 21/9, thầy trò huấn luyện viên Park Hang-seo vào bảng B với sự góp mặt của Malaysia, Indonesia, Campuchia và Lào. Tại buổi lễ bốc thăm AFF Cup 2020 diễn ra chiều 21/9, thầy trò huấn luyện viên Park Hang-seo vào bảng B với sự góp mặt của Malaysia, Indonesia, Campuchia và Lào. Tại buổi lễ bốc thăm AFF Cup 2020 diễn ra chiều 21/9, thầy trò huấn luyện viên Park Hang-seo vào bảng B với sự góp mặt của Malaysia, Indonesia, Campuchia và Lào. Tại buổi lễ bốc thăm AFF Cup 2020 diễn ra chiều 21/9, thầy trò huấn luyện viên Park Hang-seo vào bảng B với sự góp mặt của Malaysia, Indonesia, Campuchia và Lào. Tại buổi lễ bốc thăm AFF Cup 2020 diễn ra chiều 21/9, thầy trò huấn luyện viên Park Hang-seo vào bảng B với sự góp mặt của Malaysia, Indonesia, Campuchia và Lào.Tại buổi lễ bốc thăm AFF Cup 2020 diễn ra chiều 21/9, thầy trò huấn luyện viên Park Hang-seo vào bảng B với sự góp mặt của Malaysia, Indonesia, Campuchia và Lào.Tại buổi lễ bốc thăm AFF Cup 2020 diễn ra chiều 21/9, thầy trò huấn luyện viên Park Hang-seo vào bảng B với sự góp mặt của Malaysia, Indonesia, Campuchia và Lào.",
    postDate: "29/8/2021",
    isActive: "12341",
    imgUrl:
        "https://znews-photo.zadn.vn/w210/Uploaded/qxjrcqjwq/2021_09_21/vn.jpg",
  ),
  NewsModel(
    type: "Tổng hợp",
    title: "Hạn chế của Lionel",
    subtitle: "Hạn chế của Lionel Messi Hạn chế của Lionel Messi để thi hành án",
    newsContent: "Hạn chế của Lionel Messi để thi hành án",
    postDate: "29/9/2021",
    isActive: "52423",
    imgUrl:
        "https://znews-photo.zadn.vn/w210/Uploaded/pgi_gunpuybat/2021_09_20/2021_09_19T191332Z_1679988044_UP1EH9J1HEISM_RTRMADP_3_SOCCER_FRANCE_PSG_LYO_REPORT.JPG",
  ),
  NewsModel(
    type: "Tổng hợp",
    title: "Đạt từ 27 điểm trở lên, 165 thí sinh không trúng tuyển đại học",
    subtitle: "Đạt từ 27 điểm trở lên, 165 thí sinh không trúng tuyển đại học",
    newsContent:
        "Đạt từ 27 điểm trở lên, 165 thí sinh không trúng tuyển đại học",
    postDate: "29/9/2021",
    isActive: "32432",
    imgUrl:
        "https://znews-photo.zadn.vn/w480/Uploaded/zbvunua/2021_09_20/Hoang_Giam_1_1.jpg",
  ),
  NewsModel(
    type: "Tổng hợp",
    title: "Con của các cầu thủ nổi tiếng học ở đâu?",
    subtitle: "Con của các cầu thủ nổi tiếng học ở đâu?",
    newsContent:
        "Đạt từ 27 điểm trở lên, 165 thí sinh không trúng tuyển đại học",
    postDate: "29/9/2021",
    isActive: "634",
    imgUrl:
        "https://znews-photo.zadn.vn/w360/Uploaded/znanug/2021_09_20/CR7.jpeg",
  ),
  NewsModel(
    type: "Tổng hợp",
    title: "Con của các cầu thủ nổi tiếng học ở đâu?",
    subtitle: "Con của các cầu thủ nổi tiếng học ở đâu?",
    newsContent:
        "Đạt từ 27 điểm trở lên, 165 thí sinh không trúng tuyển đại học",
    postDate: "29/9/2021",
    isActive: "13415",
    imgUrl:
        "https://znews-photo.zadn.vn/w360/Uploaded/znanug/2021_09_20/CR7.jpeg",
  ),
  NewsModel(
    type: "Tổng hợp",
    title: "5 cầu thủ futsal Việt Nam tỏa sáng ở vòng bảng World Cup",
    subtitle: "5 cầu thủ futsal Việt Nam tỏa sáng ở vòng bảng World Cup",
    newsContent: "5 cầu thủ futsal Việt Nam tỏa sáng ở vòng bảng World Cup",
    postDate: "29/9/2021",
    isActive: "15414",
    imgUrl:
        "https://znews-photo.zadn.vn/w360/Uploaded/yrfjpyvslyr/2021_09_20/futsal_1__1.jpg",
  ),
  NewsModel(
    type: "Tổng hợp",
    title: "F0 trong ngày 20/9 còn 8.668, thấp nhất một tháng qua",
    subtitle:
        "Số lượng ca mắc của cả nước giảm 1.357 người so với hôm qua. TP.HCM giảm F0 song vẫn còn cao.",
    newsContent:
        "Số lượng ca mắc của cả nước giảm 1.357 người so với hôm qua. TP.HCM giảm F0 song vẫn còn cao.",
    postDate: "29/9/2021",
    isActive: "1321",
    imgUrl:
        "https://znews-photo.zadn.vn/w360/Uploaded/gtnvzv/2021_09_20/pham_truong1.jpg",
  ),
];


List<NewsModel> salesList = [
  NewsModel(
    type: "Khuyến mại",
    title: "Khán giả Trung Quốc yêu cầu ngừng chiếu phim về tứ đại mỹ nhân",
    subtitle: "Khán giả Trung Quốc yêu cầu ngừng chiếu phim về tứ đại mỹ nhân",
    newsContent:
        "Khán giả Trung Quốc yêu cầu ngừng chiếu phim về tứ đại mỹ nhân",
    postDate: "29/9/2021",
    isActive: "123123",
    imgUrl:
        "https://znews-photo.zadn.vn/w210/Uploaded/ycgvppwi/2021_09_20/FRfQNshg3O6G8CJC0U3TUhoVHVXkCKLrAFD0ZgBQ9GY_1.jpg",
  ),
  NewsModel(
    type: "Khuyến mại",
    title: "Phan Sào Nam xin trích tiền lương tháng để thi hành án",
    subtitle: "Phan Sào Nam xin trích tiền lương tháng để thi hành án",
    newsContent: "Phan Sào Nam xin trích tiền lương tháng để thi hành án",
    postDate: "29/9/2021",
    isActive: "23423",
    imgUrl:
        "https://znews-photo.zadn.vn/w210/Uploaded/pwivovlb/2021_09_13/sao_nam.jpg",
  ),
];