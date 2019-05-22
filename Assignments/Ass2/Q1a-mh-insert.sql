/* FIT9132 2019 S1 Assignment 2 Q1-Part A ANSWERS
   Student Name: Farhad Ullah Rezwan
    Student ID: 30270111

   Comments to your marker:
                                            
*/
insert into patient values (110000,'Farid','Ullah','103 Burwood Highway, Burwood, VIC', to_date('04-Nov-1993', 'dd-Mon-yyyy'), '0473625486');
insert into patient values (110030,'Alen','Johnson','99 Dogman Street, Oakleakh, VIC', to_date('15-Mar-1967', 'dd-Mon-yyyy'), '0423332414');
insert into patient values (111020,'Fredrick','Robin','21 Robarts Street, Murrenbeena, VIC', to_date('21-Dec-1988', 'dd-Mon-yyyy'), '0492736457');
insert into patient values (112090,'Robart','Khan','33 Hose Street, Oakleakh, VIC', to_date('28-Apr-1990', 'dd-Mon-yyyy'), '0412654378');
insert into patient values (113067,'Kastob','Brown','74 Arti Street, Dendenong, VIC', to_date('07-Nov-1955', 'dd-Mon-yyyy'), '0409667245');
insert into patient values (114067,'Rozzario','Moore','90 Boyd Street, Noble Park, VIC', to_date('02-Dec-1978', 'dd-Mon-yyyy'), '0400987645');
insert into patient values (115890,'Rockchild','Taylor','27 Mons Parade, Dendenong, VIC', to_date('26-Jan-1998', 'dd-Mon-yyyy'), '0422773366');
insert into patient values (116290,'Bill','Anderson','45 Rog Street, Yarraman, VIC', to_date('13-Apr-1999', 'dd-Mon-yyyy'), '0411443454');
insert into patient values (117239,'Thomas','Quandt','67 Hitterthon Road, Carnegee, VIC', to_date('14-May-2000', 'dd-Mon-yyyy'), '0489244456');
insert into patient values (128342,'Jhonson','Wertheimer','99 Hose Road, Westall , NSW', to_date('25-Nov-2012', 'dd-Mon-yyyy'), '0289210923');
insert into patient values (125678,'Ohona','MacMallan','12 Manziaze Avenue, Westall, NSW', to_date('22-May-1977', 'dd-Mon-yyyy'), '0216578923');
insert into patient values (138900,'Lyric','Hassan','53 Paharan Parade, Ornaldo, QLD', to_date('18-Feb-1971', 'dd-Mon-yyyy'), '0789992341');
insert into patient values (139032,'Sam','Jack','23 Rogers Street, Malnock, WA', to_date('11-Apr-1988', 'dd-Mon-yyyy'), '0811123287');
insert into patient values (141242,'Willium','Wertheimer','32 Weknuck Street, Ternet, VIC', to_date('24-Dec-1967', 'dd-Mon-yyyy'), '0499221687');
insert into patient values (148900,'Hackson','MacMallen','42 Rose Parade,Warabee, NSW', to_date('16-Jul-1961', 'dd-Mon-yyyy'), '0212783452');
insert into patient values (141175,'Rod','Mars','78 Buterfly Road, Sandown Park, QLD', to_date('14-Apr-1982', 'dd-Mon-yyyy'), '0790872245');
insert into patient values (143765,'Fokinni','Koch','11 Tor Street, Hocktall, WA', to_date('09-May-1993', 'dd-Mon-yyyy'), '0811567898');
insert into patient values (120781,'Noman','Ali-Khan','39 Balakah Street, Narinda Park, NSW', to_date('05-Jan-1995', 'dd-Mon-yyyy'), '0243525027');
insert into patient values (136789,'Zakir','Nayek','310 Basundhara, Baridhara, QLD', to_date('03-Apr-1986', 'dd-Mon-yyyy'), '0752435792');
insert into patient values (139902,'Fahad','Hossain','66 Don Street, Malnock, WA', to_date('29-Jun-1983', 'dd-Mon-yyyy'), '0848619640');
insert into patient values (139998,'Razia','Sultana','103 Burwood Highway, Burwood, VIC', to_date('23-Feb-1980', 'dd-Mon-yyyy'), '0472351090');





insert into admission values (188207, to_date('23-Apr-19', 'dd-Mon-yyyy'), to_date('26-Apr-19', 'dd-Mon-yyyy'), 113067, 1095);
insert into admission values (185689, to_date('16-Feb-19', 'dd-Mon-yyyy'), to_date('23-Feb-19', 'dd-Mon-yyyy'), 110030, 7890);
--insert into admission values (154043, to_date('13-May-19', 'dd-Mon-yyyy'), to_date('	 , 'dd-Mon-yyyy'), 112090, 1298);
insert into admission values (150944, to_date('12-Mar-19', 'dd-Mon-yyyy'), to_date('23-Mar-19', 'dd-Mon-yyyy'), 110000, 1064);
insert into admission values (152711, to_date('13-Feb-19', 'dd-Mon-yyyy'), to_date('22-Feb-19', 'dd-Mon-yyyy'), 139902, 1028);
insert into admission values (172850, to_date('19-Mar-19', 'dd-Mon-yyyy'), to_date('22-Mar-19', 'dd-Mon-yyyy'), 136789, 1012);
insert into admission values (185093, to_date('31-Mar-19', 'dd-Mon-yyyy'), to_date('04-Apr-19', 'dd-Mon-yyyy'), 120781, 1084);
--insert into admission values (180385, to_date('12-May-19', 'dd-Mon-yyyy'), to_date('	 , 'dd-Mon-yyyy'), 116290, 1005	);
insert into admission values (185711, to_date('03-Mar-19', 'dd-Mon-yyyy'), to_date('25-Mar-19', 'dd-Mon-yyyy'), 110030, 1033);
insert into admission values (155543, to_date('21-Jan-19', 'dd-Mon-yyyy'), to_date('01-Feb-19', 'dd-Mon-yyyy'), 117239, 1056);
insert into admission values (159389, to_date('23-Mar-19', 'dd-Mon-yyyy'), to_date('04-Apr-19', 'dd-Mon-yyyy'), 111020, 1012);
insert into admission values (174522, to_date('01-May-19', 'dd-Mon-yyyy'), to_date('07-May-19', 'dd-Mon-yyyy'), 138900, 1095);
insert into admission values (156404, to_date('21-Mar-19', 'dd-Mon-yyyy'), to_date('23-Mar-19', 'dd-Mon-yyyy'), 141175, 1005);
insert into admission values (183296, to_date('25-Feb-19', 'dd-Mon-yyyy'), to_date('26-Feb-19', 'dd-Mon-yyyy'), 143765, 1099);
insert into admission values (186850, to_date('03-Mar-19', 'dd-Mon-yyyy'), to_date('14-Mar-19', 'dd-Mon-yyyy'), 139902, 1060);
insert into admission values (156571, to_date('24-Feb-19', 'dd-Mon-yyyy'), to_date('18-Mar-19', 'dd-Mon-yyyy'), 139032, 1018);
insert into admission values (162634, to_date('07-Jan-19', 'dd-Mon-yyyy'), to_date('06-Feb-19', 'dd-Mon-yyyy'), 125678, 2459);
insert into admission values (184793, to_date('08-May-19', 'dd-Mon-yyyy'), to_date('18-Feb-19', 'dd-Mon-yyyy'), 139032, 1069);
insert into admission values (174223, to_date('08-Jan-19', 'dd-Mon-yyyy'), to_date('29-Jan-19', 'dd-Mon-yyyy'), 115890, 1005);
insert into admission values (170140, to_date('06-Mar-19', 'dd-Mon-yyyy'), to_date('18-Mar-19', 'dd-Mon-yyyy'), 143765, 1027);
insert into admission values (164688, to_date('09-Jan-19', 'dd-Mon-yyyy'), to_date('16-Jan-19', 'dd-Mon-yyyy'), 114067, 1048);
--insert into admission values (166232, to_date('13-May-19', 'dd-Mon-yyyy'), to_date('	 ', 'dd-Mon-yyyy'), 141242, 1061	);
--insert into admission values (180532, to_date('19-Mar-19', 'dd-Mon-yyyy'), to_date('	 ', 'dd-Mon-yyyy'), 148900, 1099	);
insert into admission values (188637, to_date('16-Mar-19', 'dd-Mon-yyyy'), to_date('21-Mar-19', 'dd-Mon-yyyy'), 125678, 7900);
insert into admission values (178613, to_date('13-Apr-19', 'dd-Mon-yyyy'), to_date('22-Apr-19', 'dd-Mon-yyyy'), 128342, 1099);

delete from patient;