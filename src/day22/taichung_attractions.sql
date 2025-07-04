use mydb;
create table if not exists taichung_attractions(
	id int auto_increment primary key,
    name varchar(100) unique not null,
    location varchar(100),
    ticket_price varchar(50),
    category enum('約會', '闔家', '親子', '朋友', '其他'),
    description varchar(255)
);

-------------------------------------------------------------------------------------------

use mydb;
insert into taichung_attractions(name, location, ticket_price, category, description) values
('高美濕地', '清水區', '免費', '約會', '世界級夕陽美景，情侶約會首選'),
('草悟道', '西區', '免費', '闔家', '綠意盎然的都市綠帶，適合親子散步野餐'),
('審計新村', '西區', '免費', '朋友', '文青聚落，手作市集與咖啡廳林立'),
('台中歌劇院', '西屯區', '依表演而定', '約會', '建築地標，欣賞藝文展演的好去處'),
('薰衣草森林', '新社區', '全票250元', '約會', '浪漫花園，適合情侶漫步'),
('新社古堡', '新社區', '全票250元', '約會', '歐式城堡建築，情侶拍照景點'),
('麗寶樂園', '后里區', '全票899元', '親子', '大型主題樂園，適合全家歡樂一日遊'),
('后豐鐵馬道', '豐原區', '免費', '闔家', '知名自行車道，親子騎單車好去處'),
('國立自然科學博物館', '北區', '全票100元', '闔家', '知識與樂趣兼具，適合全家同遊'),
('中社觀光花市', '后里區', '120~150元', '約會', '四季花海，情侶賞花約會地點'),
('柳川藍帶水岸', '中區', '免費', '約會', '夜晚點燈浪漫，適合情侶散步'),
('彩虹眷村', '南屯區', '免費', '朋友', '彩繪藝術村，拍照打卡熱點'),
('逢甲夜市', '西屯區', '免費', '朋友', '台灣最熱鬧夜市之一，吃喝玩樂首選'),
('大坑情人橋', '北屯區', '免費', '約會', '水中倒影成愛心，浪漫拍照聖地'),
('東豐綠色走廊', '豐原區', '免費', '闔家', '綠蔭自行車道，適合親子共遊'),
('文心森林公園', '南屯區', '免費', '闔家', '大型公園，適合野餐與親子活動'),
('豐樂雕塑公園', '南屯區', '免費', '闔家', '雕塑藝術與親子遊樂設施兼具'),
('台中公園', '北區', '免費', '闔家', '百年古蹟，湖心亭與划船體驗'),
('武陵農場', '和平區', '全票160元', '闔家', '賞櫻、賞楓名勝，適合全家踏青'),
('宮原眼科', '中區', '免費', '朋友', '復古建築與冰淇淋甜點名店'),
('紙箱王創意園區', '西屯區', '全票200元', '親子', '紙藝主題樂園，親子互動體驗'),
('木匠兄妹木工房', '西屯區', '全票200元', '親子', 'DIY木工體驗，寓教於樂'),
('SNOWTOWN雪樂地', '西屯區', '全票350元', '親子', '室內雪場，親子玩雪新體驗'),
('赤腳丫生態農莊', '大雅區', '全票250元', '親子', '生態農場，親子互動餵動物'),
('台灣氣球博物館', '神岡區', '全票200元', '親子', '亞洲唯一氣球主題館，適合親子同樂'),
('大甲鎮瀾宮', '大甲區', '免費', '闔家', '台灣著名媽祖廟，宗教文化體驗'),
('梧棲漁港', '梧棲區', '免費', '闔家', '新鮮海產與海港風情'),
('大坑步道', '北屯區', '免費', '朋友', '熱門登山步道，適合健行運動'),
('新峰農場', '東勢區', '全票200元', '親子', '農場體驗，採果與親子互動'),
('Park2草悟廣場', '西區', '免費', '朋友', '文創市集、餐飲聚集地，適合朋友聚會');

-------------------------------------------------------------------------------------------

use mydb;
select id, name, location, ticket_price, category, description from taichung_attractions;
-- 1. 查詢所有「免費」的景點名稱(name)與所在區域(location)
select name, location, category from taichung_attractions
where ticket_price = '免費';

-- 2. 查詢「約會」類型的景點，並依票價由高到低排序（票價需自行轉換為數字比較）
-- （提示：只需先查詢資料，不需排序）
select name, location, category, ticket_price from taichung_attractions
where category = '約會';

-- 3. 查詢每種 category（約會/闔家/親子/朋友）各有幾個景點
select category, count(*) as count from taichung_attractions
group by category;

-- 4. 查詢所有景點名稱中有「公園」二字的資料
select id, name, location, ticket_price, category, description 
from taichung_attractions
where name like '%公園%';