-- SCOTT.MEMBER_TEAMPRO definition

CREATE TABLE "SCOTT"."MEMBER_TEAMPRO"
(	"ID" VARCHAR2(10) NOT NULL ENABLE,
     "PASS" VARCHAR2(10) NOT NULL ENABLE,
     "NAME" VARCHAR2(30) NOT NULL ENABLE,
     "REGIDATE" DATE DEFAULT sysdate NOT NULL ENABLE
) SEGMENT CREATION IMMEDIATE
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
            PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
            BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "USERS" ;

COMMENT ON COLUMN SCOTT.MEMBER_TEAMPRO.ID IS '아이디';
COMMENT ON COLUMN SCOTT.MEMBER_TEAMPRO.PASS IS '패스워드';
COMMENT ON COLUMN SCOTT.MEMBER_TEAMPRO.NAME IS '이름';
COMMENT ON COLUMN SCOTT.MEMBER_TEAMPRO.REGIDATE IS '가입날짜';

CREATE SEQUENCE seq_teampro_num
    INCREMENT BY 1 -- 1씩증가
    START WITH 1 -- 1부터 시작
    MINVALUE 1 -- 최소값 1
    nomaxvalue -- 최대값 무한대
	nocycle -- 순환 안함
	nocache; -- 캐시 안함


CREATE TABLE movieinfo_teampro (
                                   num INT PRIMARY KEY,
                                   title VARCHAR(255),
                                   director VARCHAR(255),
                                   actor VARCHAR(255),
                                   category VARCHAR(255),
                                   runningtime INT,
                                   releasedate DATE
);

CREATE TABLE moviedetail_teampro (
                                     num INT,
                                     production VARCHAR(255),
                                     summary VARCHAR(4000),
                                     visitcount INT,
                                     img VARCHAR(255),
                                     youtube VARCHAR(255),
                                     FOREIGN KEY (num) REFERENCES movieinfo_teampro(num)
);

insert into MOVIEINFO_TEAMPRO (NUM,TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE) values
    (seq_board_num.nextval,'스즈메의 문단속','신카이 마코토', '', '애니메이션','122','2023-03-08');
insert into MOVIEINFO_TEAMPRO (num, TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'서울의 봄','김성수', '황정민, 정우성','드라마', '141','2023.11.22');
insert into MOVIEINFO_TEAMPRO (num, TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'귀멸의 칼날:인연의 기적, 그리고 합동 강화 훈련으로','소토자키 하루오, 마츠시마 이키라', '','애니메이션', '103','2024.02.14');
insert into MOVIEINFO_TEAMPRO (num, TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'스파이더맨: 노 웨이 홈','존 왓츠', '톰 홀랜드, 젠데이아콜먼','액션', '148','2021.12.15');
insert into MOVIEINFO_TEAMPRO (num,TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'극한직업','이병헌', '류승룡, 이하늬','코미디', '111','2019.01.23');
insert into MOVIEINFO_TEAMPRO (num, TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'오늘밤, 세계에서 이 사랑이 사라진다 해도','미키 타카히로', '미치에다 슌스케, 후쿠모토 리코','로맨스', '121','2022.11.30');
insert into MOVIEINFO_TEAMPRO (num,TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'헝거게임:캣칭 파이어','프랜시스 로렌스', '제니퍼 로렌스, 조쉬 허처슨','판타지', '146','2013.11.21');
insert into MOVIEINFO_TEAMPRO (num, TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'군도:민란의 시대','윤종빈', '하정우, 강동원','액션', '137','2014.07.23');
insert into MOVIEINFO_TEAMPRO (num,TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'공조2:인터내셔날','이석훈', '현빈, 유해진','액션', '129','2022.09.07');
insert into MOVIEINFO_TEAMPRO (num,TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'청년경찰','김주환', '박서준, 강하늘','액션', '109','2017.08.09');
insert into MOVIEINFO_TEAMPRO (num, TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'도둑들','최동훈', '김윤석, 김혜수','범죄', '135','212.07.25');
insert into MOVIEINFO_TEAMPRO (num,TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'베놈','루벤 플레셔', '톰 하디, 미셸 윌리엄스','액션', '107','2018.10.03');
insert into MOVIEINFO_TEAMPRO (num,TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'라라랜드','데이미언 셔젤', '라이언 고슬링, 엠마 스톤','드라마', '127','2016.12.07');
insert into MOVIEINFO_TEAMPRO (num,TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'비긴어게인','주드 애파토우, 토빈 암브러스트, 안토니 브레그먼', '키이라 나이틀리, 마크 러팔로','드라마', '104','2014.08.13');
insert into MOVIEINFO_TEAMPRO (num,TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'그 시절, 우리가 좋아했던 소녀','구파도', '가진동, 천옌시','로맨스', '107','2024.02.14');
insert into MOVIEINFO_TEAMPRO (num, TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'나의 소녀시대','진옥산', '송운화, 왕대륙','로맨스', '134','2016.05.11');
insert into MOVIEINFO_TEAMPRO (num, TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'너의 이름은','신카이 마코토', '','애니메이션', '106','2017.01.04');
insert into MOVIEINFO_TEAMPRO (num, TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'어바웃 타임','리처드 커티스', '도널 글리슨, 레이첼 맥아담스','로맨스', '123','2013.12.05');
insert into MOVIEINFO_TEAMPRO (num,TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'이터널 선샤인','미셸 공드리', '','드라마', '107','2005.11.10');
insert into MOVIEINFO_TEAMPRO (num, TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'한산:용의 출현','김한민', '박해일, 변요한','액션', '129','2022.07.27');
insert into MOVIEINFO_TEAMPRO (num,TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'엑시트','이상근', '조정석, 임윤아','코미디', '103','2019.07.31');
insert into MOVIEINFO_TEAMPRO (num, TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'오펜하이머','크리스토퍼 놀란', '킬리언 머피, 에밀리 블런트','스릴러', '180','2023.08.15');
insert into MOVIEINFO_TEAMPRO (num, TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'1947 보스톤','강제규', '임시완','드라마', '108','2023.09.27');
insert into MOVIEINFO_TEAMPRO (num, TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'탑건:매버릭','조셈 코신스키', '톰크루즈','액션', '130','2022.06.22');
insert into MOVIEINFO_TEAMPRO (num,TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'보스 베이비2','톰 맥그라스', '','애니메이션', '107','2021.07.21');
insert into MOVIEINFO_TEAMPRO (num, TITLE,DIRECTOR, ACTOR,CATEGORY, RUNNINGTIME, RELEASEDATE)
values (seq_board_num.nextval,'리바운드','장항준', '안재홍, 이신영','드라마', '122','2023.04.05');


INSERT INTO moviedetail_teampro (num, production, summary, visitcount, img, youtube) VALUES
    (100,'코믹스 웨이브 필름','규슈의 한적한 마을에 살고 있는 스즈메는 문을 찾아 여행 중인 청년 소타를 만난다. 그의 뒤를 쫓아 산속 폐허에서 발견한 낡은 문. 스즈메가 무언가에 이끌리듯 문을 열자 마을에 재난의 위기가 닥쳐오고 수수께끼의 고양이 다이진이 나타나
소타를 의자로 바꿔버리고 일본 각지의 폐허에 재난을 부르는 문이 열리기 시작하자 스즈메는 의자가 된 소타와 함께 여정에 나선다.', 1500,'/img/movieposter/img1.webp', 'https://www.youtube.com/watch?v=vpe62i_LDps');
INSERT INTO moviedetail_teampro (num, production, summary, visitcount, img, youtube) VALUES
    (101,'하이브미디어코프','1979년 12월 12일, 수도 서울 군사반란 발생 그날, 대한민국의 운명이 바뀌었다. 대한민국을 뒤흔든 10월 26일 이후, 서울에 새로운 바람이 불어온 것도 잠시 12월 12일 보안 사령관 전두광이 반란을 일으키고 군 내
사조직을 총동원하여 최전선의 전방부대까지 서울로 불러들인다. 권력에 눈 먼 전두광의 반란군과 이에 맞선 수도경비사령관 이태신 두 세력의 팽팽한 대립! 대한민국 수도에서 가장 치열한 전쟁이 펼쳐진다!',2000,'/img/movieposter/img2.webp'
    ,'https://www.youtube.com/watch?v=-AZ7cnwn2YI');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (102,'uforable,애니플렉스, 슈에이샤','탄지로와 상현 4 한텐구의 목숨을 건 혈투와 무잔과의 최종 국면을 앞둔 귀살대원들의 마지막 훈련을 그린 영화', 780,'/img/movieposter/img3.webp','https://www.youtube.com/watch?v=TFsD_eWkIuQ');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (103,'컴럼비아 픽처스, 마블 스튜디오, 파스칼 픽처스','미스테리오의 계략으로 세상에 정체가 탄로난 스파이더맨 피터 파커는 하루 아침에 평범한 일상을 잃게 된다. 문제를 해결하기 위해 닥터 스트레인지를 찾아가 도움을 청하지만 뜻하지 않게 멀티버스가 열리면서 각기 다른 차원의 불청객들이 나타난다.
깊은 원한을 가진 숙적들의 강력한 공격에 피터파커는 사상 최악의 위기를 맞게 되는데 ...',1010,'/img/movieposter/img4.webp','https://www.youtube.com/watch?v=W7edvITC9g4');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (104,'어바웃필름, 여화사해그림, CJ엔터텐인먼트','불철주야 달리고 구르지만 실적은 바닥, 급기야 해체위기를 맞는 마약반! 더이상 물러설 곳이 없는 팀의 맏형 고반장은 국제 범죄조직의 국내 마약 밀반입 정황을 포착하고 4명의 팀원들과 함께 잠복수사에 나선다. 마약반은 24시간 감시를 위해 범죄조직의 아지트 앞 치킨집을 인수해
위장 창업을 하게되고 마형사의 숨은 재능으로 치킨집은 일약 맛집으로 입소문 나기 시작한다. 수사는 뒷전, 치킨장사로 바빠진 마약반에게 절호의 기회가 찾아오는데 ...',560,'/img/movieposter/img5.webp','https://www.youtube.com/watch?v=-OvSJ4_zc2c');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (105,'TOHO 스튜디오','"카미야 토루에 대해 잊지 말 것" 자고 일어나면 전날의 기억을 잃는 "선행성 기억상실증"에 걸린 소녀 마오리. 내일의 마오리도 내가 즐겁게 해줄거야. 누구에게도 기억되지 않는 무색무취의 평범한 소년 토루. 매일 밤 사랑이
사라지는 세계. 그럼에도 불구하고 다음날 서로를 향한 애틋한 고백을 반복하는 소년 소녀의 가장 슬픈 청춘담',850,'/img/movieposter/img6.webp','https://www.youtube.com/watch?v=dKWbgcKkn20');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (106,'컬러포스','헝거게임의 우승으로 독재국가 "판엠"의 절대권력을 위협하는 존재가 된 캣니스, 혁명의 불꽃이 된 그녀를 제거하기 위해 캐피톨은 75회 스페셜 헝거게임의 재출전을 강요한다. 역대 우승자들이 모인 헝거게임에 참가하게된 캣니스는 판엠의 음모 속에서 막강한 도전자들과 맞닥뜨린다.
모두의 운명을 걸고 살아남아야 하는 캣니스, 그녀와 함께 혁명의 불꽃이 시작된다.',500,'/img/movieposter/img7.webp','https://www.youtube.com/watch?v=HFU496S1J5A');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (107,'(주)쇼박스, 영화사월광','군도, 백성을 구하라! 양반과 탐관오리들의 착취가 극에 달했던 조선 철종 13년. 힘 없는 백성의 편이 되어 세상을 바로 잡고자하는 의적떼인 군도, 지리산 추설이 있었다. 잦은 자연재해, 기근과 관의 횡포까지 겹쳐 백성들의 삶이 날로 피폐해져 가는 사이, 조윤은 극악한 수법으로 양민들을 수탈하고 대부호로 성장한다.
뭉치면 백성, 흩어지면 도적! 망할 세상을 뒤집기 위해 백성이 주인인 새 세상을 향해 도치를 필두로 한 군도는 백성의 적, 조윤과 한판 승부를 시작한다.',450,'/img/movieposter/img8.webp','https://www.youtube.com/watch?v=1j4B7zA0Ajk');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img,youtube) VALUES
    (108,'JK필름, CJ ENM MOVIE','공조 이즈 백! 이번에 삼각 공조다! 남한으로 숨어든 글로벌 범죄조직을 잡기 위해 새로운 공조 수사에 투입된 북한 형사 림철령, 수사 중의 실수로 사이버 수사대로 전출됐던 남한형사 강진태, 미국에서 날아온 FBI 소속 잭이 각자의 목적으로 뭉쳐 짜릿한 공조 수사를 시작한다.',1500,
     '/img/movieposter/img9.webp','https://www.youtube.com/watch?v=fzUKUfHeIYA');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (109,'무비락, 도서관옆스튜디오, 베리굿스튜디오','의욕충만 경찰대생 기준 X 이론백단 경찰대생 희열 둘도 없는 친구인 두 사람은 외출을 나왔다 우연히 납치 사건을 목격하게 된다. 학교에서 배운대로 지체없이 경찰에 신고하지만 복잡한 절차와 부족한 증거로 수사는 전혀 진행될 기미가 보이지 않는 상황! 급박한 상황에서 아까운 시간만 흘러가자 기준과 희열을 직접 발로 뛰는 수사에 나서면서
파란만장한 실전수사가 시작된다.',3000,'/img/movieposter/img10.webp','https://www.youtube.com/watch?v=uflYEv_0JoY');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (110,'케이퍼필름','한 팀으로 활동 중인 한국의 도둑 뽀빠이와 예니콜, 씹던껌, 잠파노. 미술관을 터는데 멋지게 성공한 이들은 뽀빠이의 과거 파트너 마카오박이 제안한 홍콩에서의 새로운 계획을 듣게된다. 마카오 카지노에 숨겨진 희대의 다이아몬드. 성공을 장담할 수 없는 위험천만한 계획이지만 2천만 달러를 위해 작업에 착수한다. 훔치기 위해 한국과 중국의 도둑들
팽팽한 긴장감 속에서 서로 다른 10인의 도둑들은 서서히 자신만의 플랜을 세운다.', 800,'/img/movieposter/img11.webp','https://www.youtube.com/watch?v=DG7R5FMwoAM');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (111,'컬럼비아 픽처스, 마블엔터테인먼트, 파스칼 픽처스, 아라드 프로덕션, 맥 톨마치 프로덕션, 텐센트','진실을 위해서라면 몸을 사리지 않는 정의로운 열혈 기자 에디브록 거대 기업 라이프 파운데이션의 뒤를 쫓던 그는 이들의 사무실에 잠입했다가 실험실에서 외계 생물체 심비오트의 기습 공격을 받게 된다. 심비오트와 공생하게 된 에디 브록은 마침내 한층 강력한 베놈으로 거듭나고 악한 존재만을 상대하려는 에디 브록의 의지와는 달리 베놈은 난폭한
힘을 주체하지 못하는데 ... 지배할 것인가 지배당할 것인가',980,'/img/movieposter/img12.webp','https://www.youtube.com/watch?v=KI322kD7lNk');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (112,'서밋 엔터테인먼트, 길버트 필름, 임포스터 픽처스','꿈을 꾸는 사람들을 위한 별들의 도시 "라라랜드". 재즈 피아니스트 "세바스찬"과 배우 지망생 "미아", 인생에서 가장 빛나는 순간 만난 두 사람은 미완성인 서로의 무대를 만들어가기 시작한다.', 910,'/img/movieposter/img13.webp',
     'https://www.youtube.com/watch?v=Dt5hFexM5BI');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img,youtube) VALUES
    (113,'애퍼타우 프로덕션','싱어송라이터인 그레타는 남자친구 데이브가 메이저 음반회사와 계약하게 되면서 뉴욕으로 오지만 남자친구는 변해버린다. 스타 음반 프로듀서였지만 이제는 해고된 댄은 미치기 일보직전 들른 뮤직바에서 그레타의 자작곡을 듣게 되고
아직 녹슬지 않은 촉을 살려 음반제작을 제안한다. 거리 밴드를 결성한 그들은 뉴욕의 거리를 스튜디오 삼아 진짜로 부르고 싶었던 노래를 만들어 간다.',2500,'/img/movieposter/img14.webp','https://www.youtube.com/watch?v=98wK1kFDEAo');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (114,'소니 뮤직 엔터테인먼트','학교 대표 얼간이 커징텅과 친구들은 최고의 모범생 션자이를 좋아한다. 수업 도중 사고를 친 커징텅은 자신만의 방식으로 고백을 하지만 션자이는 대답하지 않는다. 그렇게 15년이 지나고 다시 만나게 되는데 그 때 너도 같은
마음이었을까?', 1000,'/img/movieposter/img15.webp','https://www.youtube.com/watch?v=UoVceraQ-zI');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (115,'포커스 필름즈','돌아가고 싶은 리즈시절 숨기고 싶은 흑역사. 1994년 대책 없이 용감했던 고딩시절, 유덕화 마누라가 꿈인 평범한 소녀 린전신과 학교를 주름잡는 비범한 소년 쉬타이위의 첫 사랑 밀어주기 작전. 모두가 소원한
첫 사랑 로맨스',845,'/img/movieposter/img16.webp','https://www.youtube.com/watch?v=TgH9V75cNtI');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (116,'코믹스 웨이브 필름','아직 만난적 없는 너를 찾고 있어 천년만에 다가오는 혜성 기적이 된다. 도쿄에 사는 소년 타키와 시골에 사는 소녀 미츠하는 서로의 몸이 뒤바뀌는 신기한 꿈을 꾼다. 절대 만날 리 없는 두사람 반드시 만나야 하는 운명이 되다. 서로에게 남긴 메모를 확인하며 점점 친구가 되어가는 타키와 미츠하.
언제부턴가 더 이상 몸이 바뀌지 않자 자신들이 특별하게 이어져있었음을 깨달은 타키는 미츠하를 만나러 가는데 잊고 싶지 않은 사람 잊으면 안되는 사람 너의 이름은 ?', 1300,'/img/movieposter/img17.webp','https://www.youtube.com/watch?v=0GtEGZv1_Os');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (117,'워킹 타이틀, 렐러티비티미디어','모태솔로 팀은 성인이 된 날, 아버지로부터 놀랄만한 가문의 비밀을 듣게 된다. 바로 시간을 되돌릴 수 있는 능력이 있다는 것! 꿈을 위해 런던으로 간 팀은 우연히 만난 사랑스러운 여인 메리에게 첫눈에 반하게 된다. 그녀의 사랑을 얻기 위해 자신의 특별한 능력을 마음껏 발휘하는 팀.
하지만 사랑이 완벽해질수록 팀을 둘러싼 주변 상황들은 미묘하게 엇갈리고 예상치 못한 사건들이 여기저기 나타나기 시작한다.',300,'/img/movieposter/img18.webp','https://www.youtube.com/watch?v=tnyWkyDGWuM');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (118,'Anonymous Content, This is that corporation','조엘은 아픈 기억만을 지워준다는 라쿠나사를 찾아가 헤어진 연인 클레멘타인의 기억을 지우기로 결심한다. 기억이 사라져 갈수록 조엘은 사랑이 시작되던 순간, 행복한 기억들, 가슴 속에 각인된 추억들을 지우기 싫어지기만 하는데 .. 당신을 지우면 이 아픔도 사라질까요?
사랑은 그렇게 다시 기억된다.', 120,'/img/movieposter/img19.webp','https://www.youtube.com/watch?v=cJ826tX3f6s');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (119,'빅스톤픽쳐스','1592년 4월 조선은 임진왜란 발발 후 단 15일 만에 왜군에 한양을 빼앗기며 절체절명의 위기에 놓인다. 이순신 장군은 연이은 전쟁의 패배와 선조마저 의주로 파천하며 수세에 몰린 상황에서도 조선을 구하고자 하지만 거북선까지 손상을 입어 상황은 어려워진다. 그럼에도 조선의 운명을 가를
전투를 위해 필사의 전략을 준비하는데 1592년 여름 한산도 앞바다, 압도적인 승리가 필요한 조선의 운명을 건 지상 최고의 해전이 펼쳐진다.',260,'/img/movieposter/img20.webp','https://www.youtube.com/watch?v=GduEtmvwcI0');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (120,'(주)외유내강, (주)필름케이','대학교 산악 동아리 에이스 출신이지만 졸업 후 몇 년째 취업 실패로 눈칫밥만 먹는 용남은 어머니의 칠순 잔치에서 연회장 직원으로 취업한 동아리 후배 의주를 만난다. 어색한 재회도 잠시 의문의 연기가 빌딩에서 피어오르며 피할 새도 없이 순식간에 도심전체는 유독가스로 뒤덮여 일대혼란에 휩싸이게 된다.
용남과 의주는 산악 동아리 시절 쌓아뒀던 모든 체력과 스킬을 총동원해 탈출을 향한 기지를 발휘하기 시작한다.', 800,'/img/movieposter/img21.webp','https://www.youtube.com/watch?v=li4jOV5j7SI');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (121,'신카피, 아틀라스 엔터테인먼트','나는 이제 죽음이요. 세상의 파괴자가 되었다. 세상을 구하기 위해 세상을 파괴할 지도 모르는 선택을 해야 하는 천재 과학자의 핵개발 프로젝트',100,'/img/movieposter/img22.webp','https://www.youtube.com/watch?v=oSqK_v6zPoM');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (122,'비에이엔터테인먼트, 빅픽쳐','나라가 독립했으면 당연히 우리 기록도 독립이 되어야지! 1936년 베를린 올림픽, 세계 신기록을 세운 마라톤 금메달리스트 손기정. 기미가요가 울려퍼지는 시상대에서 화분으로 가슴에 단 일장기를 가렸던 그는 하루아침에 민족의 영웅으로 떠올랐지만 일제의 탄압으로 더 이상 달릴 수 없게된다. 광복 이후
1947년 서울 제2의 손기정으로 촉망 받는 서윤복에게 손기정이 나타나고 밑도 끝도 없이 보스톤 마라톤 대회에 나가자는 제안을 건넨다. 일본에 귀속된 베를린 올림픽의 영광을 찾기 위해 처음으로 태극마크를 가슴에 새기고 대한 마라토너들이 달린다!', 300,'/img/movieposter/img23.webp'
    ,'https://www.youtube.com/watch?v=dZ3G2Fkf7U4');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (123,'스카이댄스 미디어, 돔 심슨/제리 브룩하이머 필름, TC 프로덕션','최고의 파일럿이자 전설적인 인물 매버릭은 자신이 졸업한 훈련사관 교관으로 발탁된다. 그의 명성을 모르던 팀원들은 매버릭의 지시를 무시하지만 실전을 방불케하는 상공 훈련에서 눈으로 봐도 믿기 어려운 전설적인 조종 실력에 모두가 압도된다. 매버릭의 지휘아래 견고한 팀위크를 쌓아가던 팀원들에게 국경을
뛰어넘는 위험한 임무가 주어지자 매버릭은 자신이 가르친 동료들과 함께 마지막이 될지 모를 하늘 위 비행에 나서는데 ...', 5000,'/img/movieposter/img24.webp','https://www.youtube.com/watch?v=Mrj9XACVJ8U');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (124,'드림웍스 애니메이션','베이비 주식회사의 레전드 보스 베이비에서 인생 만렙 CEO가 된 테드. 베이비인 줄 알았던 조카 티나가 알고 보니 베이비 주식회사 소속 임원으로 밝혀진다. 뉴 보스 베이비 티나의 지시로 다시 베이비로 돌아간 테드와 형 팀에게 주어진 시간은 48시간! 세상을 구하기 위한 미션을 무사히 완수할
수 있을 것인가?',500,'/img/movieposter/img25.webp','https://www.youtube.com/watch?v=y1eCGd6byVQ');
INSERT INTO moviedetail_teampro (num,production, summary, visitcount, img, youtube) VALUES
    (125,'비에이엔터테인먼트, 워크하우스컴퍼니','농구선수 출신 공익근무요원 "양현"은 해체 위기에 놓인 부산중앙고 농구부의 신임 코치로 발탁된다. 하지만 전국대회에서의 첫 경기 상대는 고교농구 최강자 용산고. 팀워크가 무너진 중앙고는 몰수패라는 치욕적인 결과를 낳고 학교는 농구부 해체까지 논하지만 양현은 MVP까지 올랐던 고교 시절
을 떠올리며 다시 선수들을 모은다. 아무도 주목하지 않은 최약체 팀이었지만 신임 코치와 6명의 선수가 2012년 전국고교농구대회에서 써내려간 8일간의 기적',200,'/img/movieposter/img26.webp','https://www.youtube.com/watch?v=_SCwPaNSua8');


-- 비회원 코멘트
-- SCOTT.COMMENT_TEAMPRO definition

CREATE TABLE "SCOTT"."COMMENT_TEAMPRO"
(	"IDX" NUMBER(38,0) NOT NULL ENABLE,
     "NAME" VARCHAR2(50) NOT NULL ENABLE,
     "CONTENT" VARCHAR2(2000) NOT NULL ENABLE,
     "POSTDATE" DATE DEFAULT sysdate NOT NULL ENABLE,
     "FAVOR" NUMBER(38,0) NOT NULL ENABLE,
     "PASS" VARCHAR2(50) NOT NULL ENABLE,
     "TITLE" VARCHAR2(200) NOT NULL ENABLE,
     "CATEGORY" VARCHAR2(200) NOT NULL ENABLE
) SEGMENT CREATION DEFERRED
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    TABLESPACE "USERS" ;

COMMENT ON COLUMN SCOTT.COMMENT_TEAMPRO.IDX IS '비회원 넘버';
COMMENT ON COLUMN SCOTT.COMMENT_TEAMPRO.NAME IS '비회원 닉네임';
COMMENT ON COLUMN SCOTT.COMMENT_TEAMPRO.PASS IS '비밀번호';
COMMENT ON COLUMN SCOTT.COMMENT_TEAMPRO.TITLE IS '영화 제목';
COMMENT ON COLUMN SCOTT.COMMENT_TEAMPRO.CATEGORY IS '영화 카테고리';



/*SCOTT.REVIEW_BOARD 생성.
  'ID'열을 MEMBER_TEAMPRO의 'ID'열에 외래키로 지정하는 SQL문도 포함되어 있음.
  MEMBER_TEAMPRO 테이블 생성 후 실행할 것*/
CREATE TABLE "SCOTT"."REVIEW_BOARD"
         (	"IDX" VARCHAR2(10) NOT NULL ENABLE,
             "TITLE" VARCHAR2(200) NOT NULL ENABLE,
             "CONTENT" VARCHAR2(2000) NOT NULL ENABLE,
             "ID" VARCHAR2(10) NOT NULL ENABLE,
             "POSTDATE" DATE DEFAULT sysdate NOT NULL ENABLE,
             "VISITCOUNT" NUMBER(6,0),
         CONSTRAINT "REVIEW_BOARD_PK" PRIMARY KEY ("IDX")
         USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
             STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
             PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
             BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
             TABLESPACE "USERS"  ENABLE,
     CONSTRAINT "REVIEW_BOARD_FK1" FOREIGN KEY ("ID")
         REFERENCES "SCOTT"."MEMBER_TEAMPRO" ("ID") ENABLE
) SEGMENT CREATION IMMEDIATE
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
    NOCOMPRESS LOGGING
    STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
            PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
            BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "USERS";