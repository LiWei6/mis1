# mis1
原型网址：</br>
![http://6ckz2r.axshare.com]
ER图</br>
![http://pan.baidu.com/s/1eS5bM7o]
#二.	命名规则：</br>
1.	设备类型表（类型ID，类型名称,周期，提前期）</br>
type（typeid(int 5),typename(v 50), cycle(int 3)，leadtime(int 3)）</br>
2.	保养项目表（类型ID，项目编号，项目名称）</br>
project(typeid(int 5), projectd(v 25), projectname(v 255))</br>
typeid（type——typeid）</br>
3.	设备表（设备编号，类型ID,最近保养时间）</br>
equipment(equipmentid(v 25), typeid(int 5)，recent（date）) </br>
typeid（type——typeid）</br>
4.	保养记录（记录ID，设备编号，时间）</br>
Recording(recordingid(int 5), equipmentid(v 25)，c_time( date))</br>
Equipmentid（equipment——equipmentid）</br>
5.	保养消耗表（记录ID，材料编号，材料数量）</br>
consumption（recordingid(int 5)，materialid(v 25), quantity(int 5)）</br>
recordingid（Recording——recordingid，）</br>
materialid（Material——materialid）</br>
6.	记录详情表（记录ID，项目名称，保养人，完成情况，备注）</br>
Recorddetails(recordingid(int5), projectname(v 255)，people(v 40)，happening(v 100),remarks(v 255))</br>
recordingid（Recording——recordingid，）</br>
projectname（project——projectname）</br>
7.	材料表（材料编号，材料名称）</br>
Material(materialid(v 25), materialname(v 100))</br>
#三. 查询语句
1.查询设备保养记录</br>
select projectname '保养项目' ,</br>
		 c_time '保养时间' ,</br>
		 people'保养人姓名' ,</br>
		 happening '完成情况' ,</br>
		 remarks '备注'</br>
from recording,recorddetails</br>
where  recording.recordingid=Recorddetails.recordingid and equipmentid=0001;</br>
![http://pan.baidu.com/s/1o7R5Qhc]
2.查询预警设备</br>
SELECT equipmentid</br>
FROM type t,equipment e</br>
WHERE t.cycle-DATEDIFF(NOW(),e.recent)<t.leadtime</br>
AND t.typeid=e.typeid</br>
![http://pan.baidu.com/s/1hsdnvUG]
