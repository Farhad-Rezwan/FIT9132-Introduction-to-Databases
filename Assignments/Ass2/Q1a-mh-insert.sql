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


insert into admission values (188207, to_date('23-Apr-2019 12:03:53', 'dd-Mon-yyyy hh24:mi:ss'), to_date('26-Apr-2019 10:33:22', 'dd-Mon-yyyy hh24:mi:ss'), 113067, 1095);
insert into admission values (185689, to_date('16-Feb-2019 11:02:13', 'dd-Mon-yyyy hh24:mi:ss'), to_date('23-Feb-2019 12:56:42', 'dd-Mon-yyyy hh24:mi:ss'), 110030, 7890);
insert into admission values (154043, to_date('13-May-2019 04:05:59', 'dd-Mon-yyyy hh24:mi:ss'), null, 112090, 1298);
insert into admission values (150944, to_date('12-Mar-2019 01:03:09', 'dd-Mon-yyyy hh24:mi:ss'), to_date('23-Mar-2019 13:55:44', 'dd-Mon-yyyy hh24:mi:ss'), 110000, 1064);
insert into admission values (152711, to_date('13-Feb-2019 02:55:34', 'dd-Mon-yyyy hh24:mi:ss'), to_date('22-Feb-2019 00:49:33', 'dd-Mon-yyyy hh24:mi:ss'), 139902, 1028);
insert into admission values (172850, to_date('19-Mar-2019 14:23:06', 'dd-Mon-yyyy hh24:mi:ss'), to_date('22-Mar-2019 22:33:16', 'dd-Mon-yyyy hh24:mi:ss'), 136789, 1012);
insert into admission values (185093, to_date('14-Mar-2019 18:11:23', 'dd-Mon-yyyy hh24:mi:ss'), to_date('04-Apr-2019 06:09:26', 'dd-Mon-yyyy hh24:mi:ss'), 120781, 1084);
insert into admission values (180385, to_date('12-May-2019 19:33:12', 'dd-Mon-yyyy hh24:mi:ss'), null, 116290, 1005	);
insert into admission values (185711, to_date('14-Mar-2019 22:33:19', 'dd-Mon-yyyy hh24:mi:ss'), to_date('25-Mar-2019 10:12:47', 'dd-Mon-yyyy hh24:mi:ss'), 110030, 1033);
insert into admission values (155543, to_date('21-Jan-2019 04:55:13', 'dd-Mon-yyyy hh24:mi:ss'), to_date('01-Feb-2019 21:23:35', 'dd-Mon-yyyy hh24:mi:ss'), 117239, 1056);
insert into admission values (159389, to_date('09-Mar-2019 21:12:12', 'dd-Mon-yyyy hh24:mi:ss'), to_date('04-Apr-2019 23:03:17', 'dd-Mon-yyyy hh24:mi:ss'), 111020, 1012);
insert into admission values (174522, to_date('01-May-2019 21:55:23', 'dd-Mon-yyyy hh24:mi:ss'), to_date('07-May-2019 03:56:33', 'dd-Mon-yyyy hh24:mi:ss'), 138900, 1095);
insert into admission values (156404, to_date('21-Mar-2019 18:23:34', 'dd-Mon-yyyy hh24:mi:ss'), to_date('23-Mar-2019 04:12:01', 'dd-Mon-yyyy hh24:mi:ss'), 141175, 1005);
insert into admission values (183296, to_date('25-Feb-2019 12:56:52', 'dd-Mon-yyyy hh24:mi:ss'), to_date('26-Feb-2019 19:42:56', 'dd-Mon-yyyy hh24:mi:ss'), 143765, 1099);
insert into admission values (186850, to_date('03-Mar-2019 21:23:53', 'dd-Mon-yyyy hh24:mi:ss'), to_date('14-Mar-2019 02:24:09', 'dd-Mon-yyyy hh24:mi:ss'), 139902, 1060);
insert into admission values (156571, to_date('24-Feb-2019 12:49:48', 'dd-Mon-yyyy hh24:mi:ss'), to_date('18-Mar-2019 18:01:23', 'dd-Mon-yyyy hh24:mi:ss'), 139032, 1018);
insert into admission values (162634, to_date('07-Jan-2019 00:28:37', 'dd-Mon-yyyy hh24:mi:ss'), to_date('06-Feb-2019 02:41:51', 'dd-Mon-yyyy hh24:mi:ss'), 125678, 2459);
insert into admission values (184793, to_date('18-Feb-2019 09:23:26', 'dd-Mon-yyyy hh24:mi:ss'), to_date('08-May-2019 15:01:32', 'dd-Mon-yyyy hh24:mi:ss'), 139032, 1069);
insert into admission values (174223, to_date('14-Mar-2019 04:11:26', 'dd-Mon-yyyy hh24:mi:ss'), to_date('29-Jan-2019 10:11:49', 'dd-Mon-yyyy hh24:mi:ss'), 115890, 1005);
insert into admission values (170140, to_date('06-Mar-2019 03:22:56', 'dd-Mon-yyyy hh24:mi:ss'), to_date('18-Mar-2019 05:41:43', 'dd-Mon-yyyy hh24:mi:ss'), 143765, 1027);
insert into admission values (164688, to_date('09-Jan-2019 13:44:34', 'dd-Mon-yyyy hh24:mi:ss'), to_date('16-Jan-2019 04:26:51', 'dd-Mon-yyyy hh24:mi:ss'), 114067, 1048);
insert into admission values (166232, to_date('13-May-2019 12:16:12', 'dd-Mon-yyyy hh24:mi:ss'), null, 141242, 1061	);
insert into admission values (180532, to_date('19-Mar-2019 23:45:53', 'dd-Mon-yyyy hh24:mi:ss'), null, 148900, 1099	);
insert into admission values (188637, to_date('16-Mar-2019 20:16:31', 'dd-Mon-yyyy hh24:mi:ss'), to_date('21-Mar-2019 00:45:27', 'dd-Mon-yyyy hh24:mi:ss'), 125678, 7900);
insert into admission values (178613, to_date('13-Apr-2019 19:20:06', 'dd-Mon-yyyy hh24:mi:ss'), to_date('22-Apr-2019 10:42:30', 'dd-Mon-yyyy hh24:mi:ss'), 128342, 1099);



insert into adm_prc values (0001053, to_date('24-Apr-2019 07:10:33', 'dd-Mon-yyyy hh24:mi:ss'), 30.00, 12.84, 180532, 65554, 2459, 1048);
insert into adm_prc values (0001163, to_date('17-Feb-2019 07:30:37', 'dd-Mon-yyyy hh24:mi:ss'), 355.00, 25.68, 188637, 43111, 7900, 1061);
insert into adm_prc values (0001349, to_date('14-May-2019 06:34:53', 'dd-Mon-yyyy hh24:mi:ss'), 399.00, 33.32, 152711, 43112, 1069, 1056);
insert into adm_prc values (0001386, to_date('13-Mar-2019 08:30:47', 'dd-Mon-yyyy hh24:mi:ss'), 109.28, 124.08, 172850, 29844, 1028, 1033);
insert into adm_prc values (0001475, to_date('14-Feb-2019 08:45:55', 'dd-Mon-yyyy hh24:mi:ss'), 76.00, 645.30, 185093, 32266, 1048, 1056);
insert into adm_prc values (0001504, to_date('20-Mar-2019 08:04:27', 'dd-Mon-yyyy hh24:mi:ss'), 33.50, 20.52, 185689, 40100, 1061, 1033);
insert into adm_prc values (0001689, to_date('04-Mar-2019 08:03:57', 'dd-Mon-yyyy hh24:mi:ss'), 120.66, 47.55, 186850, 43114, 1056,null);
insert into adm_prc values (0001773, to_date('13-May-2019 08:28:24', 'dd-Mon-yyyy hh24:mi:ss'), 633.00, 401.30, 150944, 27459, 1033, 1099);
insert into adm_prc values (0001855, to_date('04-Mar-2019 07:06:37', 'dd-Mon-yyyy hh24:mi:ss'), 250.00, 155.45, 166232, 12055, 1012, 1099);
insert into adm_prc values (0001979, to_date('22-Jan-2019 07:29:40', 'dd-Mon-yyyy hh24:mi:ss'), 33.50, 225.36, 154043, 40100, 1099,null);
insert into adm_prc values (0002389, to_date('10-Mar-2019 06:39:42', 'dd-Mon-yyyy hh24:mi:ss'), 120.66, 27.60, 170140, 43114, 1099, 1033);
insert into adm_prc values (0002714, to_date('07-Mar-2019 07:11:18', 'dd-Mon-yyyy hh24:mi:ss'), 633.00, 55.72, 156571, 27459, 1084,null);
insert into adm_prc values (0002781, to_date('22-Mar-2019 07:51:32', 'dd-Mon-yyyy hh24:mi:ss'), 200.00, 27.00, 156404, 15511, 1064, 1084);
insert into adm_prc values (0002831, to_date('26-Feb-2019 07:59:24', 'dd-Mon-yyyy hh24:mi:ss'), 244.00, 365.48, 183296, 54132, 1095,null);
insert into adm_prc values (0002839, to_date('04-Mar-2019 08:38:32', 'dd-Mon-yyyy hh24:mi:ss'), 75.00, 75.50, 186850, 15510, 1005, 1084);
insert into adm_prc values (0002952, to_date('25-Feb-2019 08:35:04', 'dd-Mon-yyyy hh24:mi:ss'), 68.00, 215.10, 155543, 19887, 1027,null);
insert into adm_prc values (0003075, to_date('08-Jan-2019 07:19:22', 'dd-Mon-yyyy hh24:mi:ss'), 243.10, 182.33, 159389, 43556, 1048, 1048);
insert into adm_prc values (0003097, to_date('09-May-2019 06:32:57', 'dd-Mon-yyyy hh24:mi:ss'), 633.00, 27.86, 184793, 27459, 1061, 1061);
insert into adm_prc values (0003199, to_date('09-Jan-2019 08:27:03', 'dd-Mon-yyyy hh24:mi:ss'), 200.00, 33.75, 188207, 15511, 1056, 1056);
insert into adm_prc values (0003408, to_date('07-Mar-2019 06:21:27', 'dd-Mon-yyyy hh24:mi:ss'), 65.20, 18.00, 156571, 71432, 1033, 1033);
insert into adm_prc values (0003518, to_date('17-Mar-2019 08:24:01', 'dd-Mon-yyyy hh24:mi:ss'), 75.00, 105.70, 162634, 15510, 1012,null);
insert into adm_prc values (0003597, to_date('14-May-2019 07:05:22', 'dd-Mon-yyyy hh24:mi:ss'), 68.00, 230.20, 180385, 19887, 1018, 1061);
insert into adm_prc values (0003659, to_date('20-Mar-2019 08:04:57', 'dd-Mon-yyyy hh24:mi:ss'), 98.00, 81.20, 185711, 23432, 1298, 1099);
insert into adm_prc values (0003674, to_date('17-Mar-2019 08:42:45', 'dd-Mon-yyyy hh24:mi:ss'), 70.45, 3.98, 162634, 33335, 1060, 1084);
insert into adm_prc values (0004241, to_date('14-Apr-2019 06:19:27', 'dd-Mon-yyyy hh24:mi:ss'), 40.00, 0.72, 174223, 40099, 7890, 1064);
insert into adm_prc values (0004265, to_date('10-Jan-2019 06:30:59', 'dd-Mon-yyyy hh24:mi:ss'), 500.00, 1.72, 178613, 17122, 1027, 1084);
insert into adm_prc values (0004433, to_date('02-May-2019 07:39:41', 'dd-Mon-yyyy hh24:mi:ss'), 350.00, 123.00, 174522, 49518, 1048, 1064);
insert into adm_prc values (0004549, to_date('01-Apr-2019 08:55:36', 'dd-Mon-yyyy hh24:mi:ss'), 75.00, 123.00, 164688, 15509, 1061, 1095);
insert into adm_prc values (0004743, to_date('22-Jan-2019 07:43:48', 'dd-Mon-yyyy hh24:mi:ss'), 243.10, 182.33, 154043, 43556, 1056, 1005);
insert into adm_prc values (0004904, to_date('24-Apr-2019 07:18:41', 'dd-Mon-yyyy hh24:mi:ss'), 250.00, 110.15, 180532, 12055, 1033,null);


insert into item_treatment values (0001053,'OV001',3,12.84);
insert into item_treatment values (0001349, 'PS318', 7, 33.32);
insert into item_treatment values (0001386, 'CF050', 2, 124.08);
insert into item_treatment values (0001475, 'LB250', 3, 645.30);
insert into item_treatment values (0001504, 'AT258', 18, 20.52);
insert into item_treatment values (0001689, 'CA002', 15, 33.75);
insert into item_treatment values (0001689, 'NE001', 4, 13.80);
insert into item_treatment values (0001773, 'BI500', 1, 365.48);
insert into item_treatment values (0001773, 'CE001', 9, 35.82);
insert into item_treatment values (0001855, 'EA030', 1, 110.15);
insert into item_treatment values (0001855, 'SS006', 3, 45.30);
insert into item_treatment values (0001979, 'AT258', 9, 10.26);
insert into item_treatment values (0001979, 'LB250', 1, 215.10);
insert into item_treatment values (0002389, 'NE001', 8, 27.60);
insert into item_treatment values (0002714, 'CE001', 14, 55.72);
insert into item_treatment values (0002781, 'CA002', 12, 27.00);
insert into item_treatment values (0002831, 'BI500', 1, 365.48);
insert into item_treatment values (0002839, 'SS006', 5, 75.50);
insert into item_treatment values (0002952, 'LB250', 1, 215.10);
insert into item_treatment values (0003075, 'AN002', 1, 182.33);
insert into item_treatment values (0003097, 'CE001', 7, 27.86);
insert into item_treatment values (0003199, 'CA002', 15, 33.75);
insert into item_treatment values (0003408, 'TN010', 40, 18.00);
insert into item_treatment values (0003518, 'SS006', 7, 105.70);
insert into item_treatment values (0003597, 'LB250', 1, 215.10);
insert into item_treatment values (0003597, 'SS006', 1, 15.10);
insert into item_treatment values (0003659, 'AP050', 1, 81.20);
insert into item_treatment values (0003674, 'CE010', 1, 3.98);
insert into item_treatment values (0004241, 'ST252', 1, 0.72);
insert into item_treatment values (0004265, 'TE001', 1, 1.72);
insert into item_treatment values (0004433, 'KN056', 1, 123.00);
insert into item_treatment values (0004549, 'KN056', 1, 123.00);
insert into item_treatment values (0004743, 'AN002', 1, 182.33);
insert into item_treatment values (0004904, 'EA030', 1, 110.15);

commit;