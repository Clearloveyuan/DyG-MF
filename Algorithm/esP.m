function [n1,aa1,landmark,Phi,Psi,Whole]=esP(M1,KK,Phi,Psi,landmark,M0,alpha,ll,real1)

[n,~]=size(M1)

%partition process
hatM1=M1;
hatM1(landmark,:)=[];
hatM1(:,landmark)=[];

[hnn,~]=size(hatM1);
re=rem(hnn,50);
hn=hnn-re;
for o=1:49
eval(['h',num2str(o),'=','hn/50*',num2str(o),';']);
end
h50=hn;


label=1:n;
label=label';
label(landmark,:)=[];

[nla,~]=size(label);
label1=label(1:h1,:);
label2=label(h1+1:h2,:);
label3=label(h2+1:h3,:);
label4=label(h3+1:h4,:);
label5=label(h4+1:h5,:);
label6=label(h5+1:h6,:);
label7=label(h6+1:h7,:);
label8=label(h7+1:h8,:);
label9=label(h8+1:h9,:);
label10=label(h9+1:h10,:);
label11=label(h10+1:h11,:);
label12=label(h11+1:h12,:);
label13=label(h12+1:h13,:);
label14=label(h13+1:h14,:);
label15=label(h14+1:h15,:);
label16=label(h15+1:h16,:);
label17=label(h16+1:h17,:);
label18=label(h17+1:h18,:);
label19=label(h18+1:h19,:);
label20=label(h19+1:h20,:);
label21=label(h20+1:h21,:);
label22=label(h21+1:h22,:);
label23=label(h22+1:h23,:);
label24=label(h23+1:h24,:);
label25=label(h24+1:h25,:);
label26=label(h25+1:h26,:);
label27=label(h26+1:h27,:);
label28=label(h27+1:h28,:);
label29=label(h28+1:h29,:);
label30=label(h29+1:h30,:);
label31=label(h30+1:h31,:);
label32=label(h31+1:h32,:);
label33=label(h32+1:h33,:);
label34=label(h33+1:h34,:);
label35=label(h34+1:h35,:);
label36=label(h35+1:h36,:);
label37=label(h36+1:h37,:);
label38=label(h37+1:h38,:);
label39=label(h38+1:h39,:);
label40=label(h39+1:h40,:);
label41=label(h40+1:h41,:);
label42=label(h41+1:h42,:);
label43=label(h42+1:h43,:);
label44=label(h43+1:h44,:);
label45=label(h44+1:h45,:);
label46=label(h45+1:h46,:);
label47=label(h46+1:h47,:);
label48=label(h47+1:h48,:);
label49=label(h48+1:h49,:);
label50=label(h49+1:h50,:);

M11=hatM1(1:h1,1:h1);
for o=2:49
eval(['M1',num2str(o),'=hatM1(1:h1,1+h',num2str(o-1),':h',num2str(o),');']);
end
M150=hatM1(1:h1,h49+1:hn);

M21=hatM1(h1+1:h2,1:h1);
for o=2:49
eval(['M2',num2str(o),'=hatM1(h1+1:h2,1+h',num2str(o-1),':h',num2str(o),');']);
end
M250=hatM1(h1+1:h2,h49+1:hn);

M31=hatM1(h2+1:h3,1:h1);
for o=2:49
eval(['M3',num2str(o),'=hatM1(h2+1:h3,1+h',num2str(o-1),':h',num2str(o),');']);
end
M350=hatM1(h2+1:h3,h49+1:hn);

M41=hatM1(h3+1:h4,1:h1);
for o=2:49
eval(['M4',num2str(o),'=hatM1(h3+1:h4,1+h',num2str(o-1),':h',num2str(o),');']);
end
M450=hatM1(h3+1:h4,h49+1:hn);

M51=hatM1(h4+1:h5,1:h1);
for o=2:49
eval(['M5',num2str(o),'=hatM1(h4+1:h5,1+h',num2str(o-1),':h',num2str(o),');']);
end
M550=hatM1(h4+1:h5,h49+1:hn);

M61=hatM1(h5+1:h6,1:h1);
for o=2:49
eval(['M6',num2str(o),'=hatM1(h5+1:h6,1+h',num2str(o-1),':h',num2str(o),');']);
end
M650=hatM1(h5+1:h6,h49+1:hn);

M71=hatM1(h6+1:h7,1:h1);
for o=2:49
eval(['M7',num2str(o),'=hatM1(h6+1:h7,1+h',num2str(o-1),':h',num2str(o),');']);
end
M750=hatM1(h6+1:h7,h49+1:hn);

M81=hatM1(h7+1:h8,1:h1);
for o=2:49
eval(['M8',num2str(o),'=hatM1(h7+1:h8,1+h',num2str(o-1),':h',num2str(o),');']);
end
M850=hatM1(h7+1:h8,h49+1:hn);

M91=hatM1(h8+1:h9,1:h1);
for o=2:49
eval(['M9',num2str(o),'=hatM1(h8+1:h9,1+h',num2str(o-1),':h',num2str(o),');']);
end
M950=hatM1(h8+1:h9,h49+1:hn);

M101=hatM1(h9+1:h10,1:h1);
for o=2:49
eval(['M10',num2str(o),'=hatM1(h9+1:h10,1+h',num2str(o-1),':h',num2str(o),');']);
end
M1050=hatM1(h9+1:h10,h49+1:hn);

M111=hatM1(h10+1:h11,1:h1);
for o=2:49
eval(['M11',num2str(o),'=hatM1(h10+1:h11,1+h',num2str(o-1),':h',num2str(o),');']);
end
M1150=hatM1(h10+1:h11,h49+1:hn);

M121=hatM1(h11+1:h12,1:h1);
for o=2:49
eval(['M12',num2str(o),'=hatM1(h11+1:h12,1+h',num2str(o-1),':h',num2str(o),');']);
end
M1250=hatM1(h11+1:h12,h49+1:hn);

M131=hatM1(h12+1:h13,1:h1);
for o=2:49
eval(['M13',num2str(o),'=hatM1(h12+1:h13,1+h',num2str(o-1),':h',num2str(o),');']);
end
M1350=hatM1(h12+1:h13,h49+1:hn);

M141=hatM1(h13+1:h14,1:h1);
for o=2:49
eval(['M14',num2str(o),'=hatM1(h13+1:h14,1+h',num2str(o-1),':h',num2str(o),');']);
end
M1450=hatM1(h13+1:h14,h49+1:hn);

M151=hatM1(h14+1:h15,1:h1);
for o=2:49
eval(['M15',num2str(o),'=hatM1(h14+1:h15,1+h',num2str(o-1),':h',num2str(o),');']);
end
M1550=hatM1(h14+1:h15,h49+1:hn);

M161=hatM1(h15+1:h16,1:h1);
for o=2:49
eval(['M16',num2str(o),'=hatM1(h15+1:h16,1+h',num2str(o-1),':h',num2str(o),');']);
end
M1650=hatM1(h15+1:h16,h49+1:hn);

M171=hatM1(h16+1:h17,1:h1);
for o=2:49
eval(['M17',num2str(o),'=hatM1(h16+1:h17,1+h',num2str(o-1),':h',num2str(o),');']);
end
M1750=hatM1(h16+1:h17,h49+1:hn);

M181=hatM1(h17+1:h18,1:h1);
for o=2:49
eval(['M18',num2str(o),'=hatM1(h17+1:h18,1+h',num2str(o-1),':h',num2str(o),');']);
end
M1850=hatM1(h17+1:h18,h49+1:hn);

M191=hatM1(h18+1:h19,1:h1);
for o=2:49
eval(['M19',num2str(o),'=hatM1(h18+1:h19,1+h',num2str(o-1),':h',num2str(o),');']);
end
M1950=hatM1(h18+1:h19,h49+1:hn);

M201=hatM1(h19+1:h20,1:h1);
for o=2:49
eval(['M20',num2str(o),'=hatM1(h19+1:h20,1+h',num2str(o-1),':h',num2str(o),');']);
end
M2050=hatM1(h19+1:h20,h49+1:hn);

M211=hatM1(h20+1:h21,1:h1);
for o=2:49
eval(['M21',num2str(o),'=hatM1(h20+1:h21,1+h',num2str(o-1),':h',num2str(o),');']);
end
M2150=hatM1(h20+1:h21,h49+1:hn);

M221=hatM1(h21+1:h22,1:h1);
for o=2:49
eval(['M22',num2str(o),'=hatM1(h21+1:h22,1+h',num2str(o-1),':h',num2str(o),');']);
end
M2250=hatM1(h21+1:h22,h49+1:hn);

M231=hatM1(h22+1:h23,1:h1);
for o=2:49
eval(['M23',num2str(o),'=hatM1(h22+1:h23,1+h',num2str(o-1),':h',num2str(o),');']);
end
M2350=hatM1(h22+1:h23,h49+1:hn);

M241=hatM1(h23+1:h24,1:h1);
for o=2:49
eval(['M24',num2str(o),'=hatM1(h23+1:h24,1+h',num2str(o-1),':h',num2str(o),');']);
end
M2450=hatM1(h23+1:h24,h49+1:hn);

M251=hatM1(h24+1:h25,1:h1);
for o=2:49
eval(['M25',num2str(o),'=hatM1(h24+1:h25,1+h',num2str(o-1),':h',num2str(o),');']);
end
M2550=hatM1(h24+1:h25,h49+1:hn);

M261=hatM1(h25+1:h26,1:h1);
for o=2:49
eval(['M26',num2str(o),'=hatM1(h25+1:h26,1+h',num2str(o-1),':h',num2str(o),');']);
end
M2650=hatM1(h25+1:h26,h49+1:hn);

M271=hatM1(h26+1:h27,1:h1);
for o=2:49
eval(['M27',num2str(o),'=hatM1(h26+1:h27,1+h',num2str(o-1),':h',num2str(o),');']);
end
M2750=hatM1(h26+1:h27,h49+1:hn);

M281=hatM1(h27+1:h28,1:h1);
for o=2:49
eval(['M28',num2str(o),'=hatM1(h27+1:h28,1+h',num2str(o-1),':h',num2str(o),');']);
end
M2850=hatM1(h27+1:h28,h49+1:hn);

M291=hatM1(h28+1:h29,1:h1);
for o=2:49
eval(['M29',num2str(o),'=hatM1(h28+1:h29,1+h',num2str(o-1),':h',num2str(o),');']);
end
M2950=hatM1(h28+1:h29,h49+1:hn);

M301=hatM1(h29+1:h30,1:h1);
for o=2:49
eval(['M30',num2str(o),'=hatM1(h29+1:h30,1+h',num2str(o-1),':h',num2str(o),');']);
end
M3050=hatM1(h29+1:h30,h49+1:hn);

M311=hatM1(h30+1:h31,1:h1);
for o=2:49
eval(['M31',num2str(o),'=hatM1(h30+1:h31,1+h',num2str(o-1),':h',num2str(o),');']);
end
M3150=hatM1(h30+1:h31,h49+1:hn);

M321=hatM1(h31+1:h32,1:h1);
for o=2:49
eval(['M32',num2str(o),'=hatM1(h31+1:h32,1+h',num2str(o-1),':h',num2str(o),');']);
end
M3250=hatM1(h31+1:h32,h49+1:hn);

M331=hatM1(h32+1:h33,1:h1);
for o=2:49
eval(['M33',num2str(o),'=hatM1(h32+1:h33,1+h',num2str(o-1),':h',num2str(o),');']);
end
M3350=hatM1(h32+1:h33,h49+1:hn);

M341=hatM1(h33+1:h34,1:h1);
for o=2:49
eval(['M34',num2str(o),'=hatM1(h33+1:h34,1+h',num2str(o-1),':h',num2str(o),');']);
end
M3450=hatM1(h33+1:h34,h49+1:hn);

M351=hatM1(h34+1:h35,1:h1);
for o=2:49
eval(['M35',num2str(o),'=hatM1(h34+1:h35,1+h',num2str(o-1),':h',num2str(o),');']);
end
M3550=hatM1(h34+1:h35,h49+1:hn);

M361=hatM1(h35+1:h36,1:h1);
for o=2:49
eval(['M36',num2str(o),'=hatM1(h35+1:h36,1+h',num2str(o-1),':h',num2str(o),');']);
end
M3650=hatM1(h35+1:h36,h49+1:hn);

M371=hatM1(h36+1:h37,1:h1);
for o=2:49
eval(['M37',num2str(o),'=hatM1(h36+1:h37,1+h',num2str(o-1),':h',num2str(o),');']);
end
M3750=hatM1(h36+1:h37,h49+1:hn);

M381=hatM1(h37+1:h38,1:h1);
for o=2:49
eval(['M38',num2str(o),'=hatM1(h37+1:h38,1+h',num2str(o-1),':h',num2str(o),');']);
end
M3850=hatM1(h37+1:h38,h49+1:hn);

M391=hatM1(h38+1:h39,1:h1);
for o=2:49
eval(['M39',num2str(o),'=hatM1(h38+1:h39,1+h',num2str(o-1),':h',num2str(o),');']);
end
M3950=hatM1(h38+1:h39,h49+1:hn);

M401=hatM1(h39+1:h40,1:h1);
for o=2:49
eval(['M40',num2str(o),'=hatM1(h39+1:h40,1+h',num2str(o-1),':h',num2str(o),');']);
end
M4050=hatM1(h39+1:h40,h49+1:hn);

M411=hatM1(h40+1:h41,1:h1);
for o=2:49
eval(['M41',num2str(o),'=hatM1(h40+1:h41,1+h',num2str(o-1),':h',num2str(o),');']);
end
M4150=hatM1(h40+1:h41,h49+1:hn);

M421=hatM1(h41+1:h42,1:h1);
for o=2:49
eval(['M42',num2str(o),'=hatM1(h41+1:h42,1+h',num2str(o-1),':h',num2str(o),');']);
end
M4250=hatM1(h41+1:h42,h49+1:hn);

M431=hatM1(h42+1:h43,1:h1);
for o=2:49
eval(['M43',num2str(o),'=hatM1(h42+1:h43,1+h',num2str(o-1),':h',num2str(o),');']);
end
M4350=hatM1(h42+1:h43,h49+1:hn);

M441=hatM1(h43+1:h44,1:h1);
for o=2:49
eval(['M44',num2str(o),'=hatM1(h43+1:h44,1+h',num2str(o-1),':h',num2str(o),');']);
end
M4450=hatM1(h43+1:h44,h49+1:hn);

M451=hatM1(h44+1:h45,1:h1);
for o=2:49
eval(['M45',num2str(o),'=hatM1(h44+1:h45,1+h',num2str(o-1),':h',num2str(o),');']);
end
M4550=hatM1(h44+1:h45,h49+1:hn);

M461=hatM1(h45+1:h46,1:h1);
for o=2:49
eval(['M46',num2str(o),'=hatM1(h45+1:h46,1+h',num2str(o-1),':h',num2str(o),');']);
end
M4650=hatM1(h45+1:h46,h49+1:hn);

M471=hatM1(h46+1:h47,1:h1);
for o=2:49
eval(['M47',num2str(o),'=hatM1(h46+1:h47,1+h',num2str(o-1),':h',num2str(o),');']);
end
M4750=hatM1(h46+1:h47,h49+1:hn);

M481=hatM1(h47+1:h48,1:h1);
for o=2:49
eval(['M48',num2str(o),'=hatM1(h47+1:h48,1+h',num2str(o-1),':h',num2str(o),');']);
end
M4850=hatM1(h47+1:h48,h49+1:hn);

M491=hatM1(h48+1:h49,1:h1);
for o=2:49
eval(['M49',num2str(o),'=hatM1(h48+1:h49,1+h',num2str(o-1),':h',num2str(o),');']);
end
M4950=hatM1(h48+1:h49,h49+1:hn);

M501=hatM1(h49+1:h50,1:h1);
for o=2:49
eval(['M50',num2str(o),'=hatM1(h49+1:h50,1+h',num2str(o-1),':h',num2str(o),');']);
end
M5050=hatM1(h49+1:h50,h49+1:hn);

%M01--M050
M00=M0;

M01=M1(landmark,:);
M01=M01(:,1:h1);
for j=2:49
eval(['M0',num2str(j),'=','M1(landmark,:)',';']);
eval(['M0',num2str(j),'=','M0',num2str(j),'(:,h',num2str(j-1),'+1:h',num2str(j),');']);
end
M050=M1(landmark,:);
M050=M050(:,h49+1:hn);
MB10=M1(:,landmark);
MB10=MB10(1:h1,:);
for o=2:49
eval(['MB',num2str(o),'0=M1(:,landmark)',';']);
eval(['MB',num2str(o),'0=','MB',num2str(o),'0(1+h',num2str(o-1),':h',num2str(o),',:)',';']);
end
MB500=M1(:,landmark);
MB500=MB500(h49+1:hn,:);
for o=1:50
eval(['hatM1',num2str(o),'=[M00,M0',num2str(o),';MB10,M1',num2str(o),'];']);
eval(['hatM2',num2str(o),'=[M00,M0',num2str(o),';MB20,M2',num2str(o),'];']);
eval(['hatM3',num2str(o),'=[M00,M0',num2str(o),';MB30,M3',num2str(o),'];']);
eval(['hatM4',num2str(o),'=[M00,M0',num2str(o),';MB40,M4',num2str(o),'];']);
eval(['hatM5',num2str(o),'=[M00,M0',num2str(o),';MB50,M5',num2str(o),'];']);
eval(['hatM6',num2str(o),'=[M00,M0',num2str(o),';MB60,M6',num2str(o),'];']);
eval(['hatM7',num2str(o),'=[M00,M0',num2str(o),';MB70,M7',num2str(o),'];']);
eval(['hatM8',num2str(o),'=[M00,M0',num2str(o),';MB80,M8',num2str(o),'];']);
eval(['hatM9',num2str(o),'=[M00,M0',num2str(o),';MB90,M9',num2str(o),'];']);
eval(['hatM10',num2str(o),'=[M00,M0',num2str(o),';MB100,M10',num2str(o),'];']);
eval(['hatM11',num2str(o),'=[M00,M0',num2str(o),';MB110,M11',num2str(o),'];']);
eval(['hatM12',num2str(o),'=[M00,M0',num2str(o),';MB120,M12',num2str(o),'];']);
eval(['hatM13',num2str(o),'=[M00,M0',num2str(o),';MB130,M13',num2str(o),'];']);
eval(['hatM14',num2str(o),'=[M00,M0',num2str(o),';MB140,M14',num2str(o),'];']);
eval(['hatM15',num2str(o),'=[M00,M0',num2str(o),';MB150,M15',num2str(o),'];']);
eval(['hatM16',num2str(o),'=[M00,M0',num2str(o),';MB160,M16',num2str(o),'];']);
eval(['hatM17',num2str(o),'=[M00,M0',num2str(o),';MB170,M17',num2str(o),'];']);
eval(['hatM18',num2str(o),'=[M00,M0',num2str(o),';MB180,M18',num2str(o),'];']);
eval(['hatM19',num2str(o),'=[M00,M0',num2str(o),';MB190,M19',num2str(o),'];']);
eval(['hatM20',num2str(o),'=[M00,M0',num2str(o),';MB200,M20',num2str(o),'];']);
eval(['hatM21',num2str(o),'=[M00,M0',num2str(o),';MB210,M21',num2str(o),'];']);
eval(['hatM22',num2str(o),'=[M00,M0',num2str(o),';MB220,M22',num2str(o),'];']);
eval(['hatM23',num2str(o),'=[M00,M0',num2str(o),';MB230,M23',num2str(o),'];']);
eval(['hatM24',num2str(o),'=[M00,M0',num2str(o),';MB240,M24',num2str(o),'];']);
eval(['hatM25',num2str(o),'=[M00,M0',num2str(o),';MB250,M25',num2str(o),'];']);
eval(['hatM26',num2str(o),'=[M00,M0',num2str(o),';MB260,M26',num2str(o),'];']);
eval(['hatM27',num2str(o),'=[M00,M0',num2str(o),';MB270,M27',num2str(o),'];']);
eval(['hatM28',num2str(o),'=[M00,M0',num2str(o),';MB280,M28',num2str(o),'];']);
eval(['hatM29',num2str(o),'=[M00,M0',num2str(o),';MB290,M29',num2str(o),'];']);
eval(['hatM30',num2str(o),'=[M00,M0',num2str(o),';MB300,M30',num2str(o),'];']);
eval(['hatM31',num2str(o),'=[M00,M0',num2str(o),';MB310,M31',num2str(o),'];']);
eval(['hatM32',num2str(o),'=[M00,M0',num2str(o),';MB320,M32',num2str(o),'];']);
eval(['hatM33',num2str(o),'=[M00,M0',num2str(o),';MB330,M33',num2str(o),'];']);
eval(['hatM34',num2str(o),'=[M00,M0',num2str(o),';MB340,M34',num2str(o),'];']);
eval(['hatM35',num2str(o),'=[M00,M0',num2str(o),';MB350,M35',num2str(o),'];']);
eval(['hatM36',num2str(o),'=[M00,M0',num2str(o),';MB360,M36',num2str(o),'];']);
eval(['hatM37',num2str(o),'=[M00,M0',num2str(o),';MB370,M37',num2str(o),'];']);
eval(['hatM38',num2str(o),'=[M00,M0',num2str(o),';MB380,M38',num2str(o),'];']);
eval(['hatM39',num2str(o),'=[M00,M0',num2str(o),';MB390,M39',num2str(o),'];']);
eval(['hatM40',num2str(o),'=[M00,M0',num2str(o),';MB400,M40',num2str(o),'];']);
eval(['hatM41',num2str(o),'=[M00,M0',num2str(o),';MB410,M41',num2str(o),'];']);
eval(['hatM42',num2str(o),'=[M00,M0',num2str(o),';MB420,M42',num2str(o),'];']);
eval(['hatM43',num2str(o),'=[M00,M0',num2str(o),';MB430,M43',num2str(o),'];']);
eval(['hatM44',num2str(o),'=[M00,M0',num2str(o),';MB440,M44',num2str(o),'];']);
eval(['hatM45',num2str(o),'=[M00,M0',num2str(o),';MB450,M45',num2str(o),'];']);
eval(['hatM46',num2str(o),'=[M00,M0',num2str(o),';MB460,M46',num2str(o),'];']);
eval(['hatM47',num2str(o),'=[M00,M0',num2str(o),';MB470,M47',num2str(o),'];']);
eval(['hatM48',num2str(o),'=[M00,M0',num2str(o),';MB480,M48',num2str(o),'];']);
eval(['hatM49',num2str(o),'=[M00,M0',num2str(o),';MB490,M49',num2str(o),'];']);
eval(['hatM50',num2str(o),'=[M00,M0',num2str(o),';MB500,M50',num2str(o),'];']);
end




[n2,n3,labb,HU1,H1,B1] = Initialize(landmark,real1,h1,KK,label1)
[na,nb]=size(H1);
zero1=zeros(na,na);
zero2=zeros(nb,nb);

for i=1:ll
X=zeros(na,nb);
S=[zero1,H1;H1',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);
for ii=1:na
for jj=1:nb
X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);
end
end
a=0;b=0;
for oo=na+1:nb
for ok=2:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'1(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B1(:,oo)=B1(:,oo).*((Psi'*Phi*H1*hatM11(:,oo)+a)./(Psi'*Phi*H1*H1'*Phi'*Psi*B1(:,oo)+b*B1(:,oo)+eps));
end
aa=0;bb=0;
for j=na+1:nb
for ok=2:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM1',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H1(:,j)=H1(:,j).*((Phi'*Psi*B1*hatM11(j,:)'+aa)./(Phi'*Psi*B1*B1'*Psi'*Phi*H1(:,j)+alpha*X(:,j)+bb*H1(:,j)+eps));
end
end




[H2,B2]=Initialize2(n2,h1,KK,label2,real1);

[na,nb]=size(H2);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H2;H2',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na
for jj=1:nb
X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);
end
end


a=0;b=0;
for oo=na+1:nb
a=[M00;MB10]'*hatM12(:,oo);
b=[M00;MB10]'*[M00;MB10];
for ok=3:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'2(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B2(:,oo)=B2(:,oo).*((Psi'*Phi*H2*hatM22(:,oo)+a)./(Psi'*Phi*H2*H2'*Phi'*Psi*B2(:,oo)+b*B2(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
aa=[M00,M01]*hatM21(j,:)';
bb=[M00,M01]*[M00,M01]';
for ok=3:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM2',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H2(:,j)=H2(:,j).*((Phi'*Psi*B2*hatM22(j,:)'+aa)./(Phi'*Psi*B2*B2'*Psi'*Phi*H2(:,j)+alpha*X(:,j)+bb*H2(:,j)+eps));
end
end


%3
[H3,B3] = Initialize2(n2,h1,KK,label3,real1);

[na,nb]=size(H3);
zero1=zeros(na,na);
zero2=zeros(nb,nb);

for i=1:ll
X=zeros(na,nb);
S=[zero1,H3;H3',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na
for jj=1:nb
X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);
end
end

a=0;b=0;
for oo=na+1:nb
for ook=1:2
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'3(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=4:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'3(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B3(:,oo)=B3(:,oo).*((Psi'*Phi*H3*hatM33(:,oo)+a)./(Psi'*Phi*H3*H3'*Phi'*Psi*B3(:,oo)+b*B3(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:2
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM3',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=4:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM3',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H3(:,j)=H3(:,j).*((Phi'*Psi*B3*hatM33(j,:)'+aa)./(Phi'*Psi*B3*B3'*Psi'*Phi*H3(:,j)+alpha*X(:,j)+bb*H3(:,j)+eps));
end

end



[H4,B4] = Initialize2(n2,h1,KK,label4,real1);



[na,nb]=size(H4);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H4;H4',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);
for ii=1:na
for jj=1:nb
X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);
end
end

a=0;b=0;
for oo=na+1:nb
for ook=1:3
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'4(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=5:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'4(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B4(:,oo)=B4(:,oo).*((Psi'*Phi*H4*hatM44(:,oo)+a)./(Psi'*Phi*H4*H4'*Phi'*Psi*B4(:,oo)+b*B4(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:3
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM4',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=5:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM4',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H4(:,j)=H4(:,j).*((Phi'*Psi*B4*hatM44(j,:)'+aa)./(Phi'*Psi*B4*B4'*Psi'*Phi*H4(:,j)+alpha*X(:,j)+bb*H4(:,j)+eps));
end

end



%5p
[H5,B5] = Initialize2(n2,h1,KK,label5,real1);

[na,nb]=size(H5);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H5;H5',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:4
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'5(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=6:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'5(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B5(:,oo)=B5(:,oo).*((Psi'*Phi*H5*hatM55(:,oo)+a)./(Psi'*Phi*H5*H5'*Phi'*Psi*B5(:,oo)+b*B5(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:4
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM5',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=6:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM5',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H5(:,j)=H5(:,j).*((Phi'*Psi*B5*hatM55(j,:)'+aa)./(Phi'*Psi*B5*B5'*Psi'*Phi*H5(:,j)+alpha*X(:,j)+bb*H5(:,j)+eps));
end

end


%6p
[H6,B6] = Initialize2(n2,h1,KK,label6,real1);


[na,nb]=size(H6);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H6;H6',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:5
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'6(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=7:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'6(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B6(:,oo)=B6(:,oo).*((Psi'*Phi*H6*hatM66(:,oo)+a)./(Psi'*Phi*H6*H6'*Phi'*Psi*B6(:,oo)+b*B6(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:5
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM6',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=7:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM6',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H6(:,j)=H6(:,j).*((Phi'*Psi*B6*hatM66(j,:)'+aa)./(Phi'*Psi*B6*B6'*Psi'*Phi*H6(:,j)+alpha*X(:,j)+bb*H6(:,j)+eps));
end

end




%7p
[H7,B7] = Initialize2(n2,h1,KK,label7,real1);


[na,nb]=size(H7);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H7;H7',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:6
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'7(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=8:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'7(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B7(:,oo)=B7(:,oo).*((Psi'*Phi*H7*hatM77(:,oo)+a)./(Psi'*Phi*H7*H7'*Phi'*Psi*B7(:,oo)+b*B7(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:6
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM7',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=8:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM7',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H7(:,j)=H7(:,j).*((Phi'*Psi*B7*hatM77(j,:)'+aa)./(Phi'*Psi*B7*B7'*Psi'*Phi*H7(:,j)+alpha*X(:,j)+bb*H7(:,j)+eps));
end

end



%8p
[H8,B8] = Initialize2(n2,h1,KK,label8,real1);


[na,nb]=size(H8);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H8;H8',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:7
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'8(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=9:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'8(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B8(:,oo)=B8(:,oo).*((Psi'*Phi*H8*hatM88(:,oo)+a)./(Psi'*Phi*H8*H8'*Phi'*Psi*B8(:,oo)+b*B8(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:7
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM8',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=9:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM8',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H8(:,j)=H8(:,j).*((Phi'*Psi*B8*hatM88(j,:)'+aa)./(Phi'*Psi*B8*B8'*Psi'*Phi*H8(:,j)+alpha*X(:,j)+bb*H8(:,j)+eps));
end

end



%9p
[H9,B9] = Initialize2(n2,h1,KK,label9,real1);

[na,nb]=size(H9);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H9;H9',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:8
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'9(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=10:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'9(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B9(:,oo)=B9(:,oo).*((Psi'*Phi*H9*hatM99(:,oo)+a)./(Psi'*Phi*H9*H9'*Phi'*Psi*B9(:,oo)+b*B9(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:8
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM9',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=10:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM9',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H9(:,j)=H9(:,j).*((Phi'*Psi*B9*hatM99(j,:)'+aa)./(Phi'*Psi*B9*B9'*Psi'*Phi*H9(:,j)+alpha*X(:,j)+bb*H9(:,j)+eps));
end

end




%10p
[H10,B10] = Initialize2(n2,h1,KK,label10,real1);


[na,nb]=size(H10);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H10;H10',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:9
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'10(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=11:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'10(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B10(:,oo)=B10(:,oo).*((Psi'*Phi*H10*hatM1010(:,oo)+a)./(Psi'*Phi*H10*H10'*Phi'*Psi*B10(:,oo)+b*B10(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:9
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM10',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=11:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM10',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H10(:,j)=H10(:,j).*((Phi'*Psi*B10*hatM1010(j,:)'+aa)./(Phi'*Psi*B10*B10'*Psi'*Phi*H10(:,j)+alpha*X(:,j)+bb*H10(:,j)+eps));
end

end



%11p
[H11,B11] = Initialize2(n2,h1,KK,label11,real1);


[na,nb]=size(H11);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H11;H11',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:10
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'11(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=12:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'11(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B11(:,oo)=B11(:,oo).*((Psi'*Phi*H11*hatM1111(:,oo)+a)./(Psi'*Phi*H11*H11'*Phi'*Psi*B11(:,oo)+b*B11(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:10
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM11',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=12:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM11',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H11(:,j)=H11(:,j).*((Phi'*Psi*B11*hatM1111(j,:)'+aa)./(Phi'*Psi*B11*B11'*Psi'*Phi*H11(:,j)+alpha*X(:,j)+bb*H11(:,j)+eps));
end

end




%12p
[H12,B12] = Initialize2(n2,h1,KK,label12,real1);


[na,nb]=size(H12);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H12;H12',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:11
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'12(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=13:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'12(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B12(:,oo)=B12(:,oo).*((Psi'*Phi*H12*hatM1212(:,oo)+a)./(Psi'*Phi*H12*H12'*Phi'*Psi*B12(:,oo)+b*B12(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:11
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM12',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=13:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM12',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H12(:,j)=H12(:,j).*((Phi'*Psi*B12*hatM1212(j,:)'+aa)./(Phi'*Psi*B12*B12'*Psi'*Phi*H12(:,j)+alpha*X(:,j)+bb*H12(:,j)+eps));
end

end




%13p
[H13,B13] = Initialize2(n2,h1,KK,label13,real1);


[na,nb]=size(H13);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H13;H13',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:12
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'13(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=14:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'13(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B13(:,oo)=B13(:,oo).*((Psi'*Phi*H13*hatM1313(:,oo)+a)./(Psi'*Phi*H13*H13'*Phi'*Psi*B13(:,oo)+b*B13(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:12
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM13',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=14:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM13',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H13(:,j)=H13(:,j).*((Phi'*Psi*B13*hatM1313(j,:)'+aa)./(Phi'*Psi*B13*B13'*Psi'*Phi*H13(:,j)+alpha*X(:,j)+bb*H13(:,j)+eps));
end

end





%14p
[H14,B14] = Initialize2(n2,h1,KK,label14,real1)


[na,nb]=size(H14);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H14;H14',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:13
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'14(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=15:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'14(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B14(:,oo)=B14(:,oo).*((Psi'*Phi*H14*hatM1414(:,oo)+a)./(Psi'*Phi*H14*H14'*Phi'*Psi*B14(:,oo)+b*B14(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:13
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM14',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=15:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM14',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H14(:,j)=H14(:,j).*((Phi'*Psi*B14*hatM1414(j,:)'+aa)./(Phi'*Psi*B14*B14'*Psi'*Phi*H14(:,j)+alpha*X(:,j)+bb*H14(:,j)+eps));
end

end




%15p
[H15,B15] = Initialize2(n2,h1,KK,label15,real1)


[na,nb]=size(H15);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H15;H15',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:14
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'15(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=16:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'15(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B15(:,oo)=B15(:,oo).*((Psi'*Phi*H15*hatM1515(:,oo)+a)./(Psi'*Phi*H15*H15'*Phi'*Psi*B15(:,oo)+b*B15(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:14
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM15',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=16:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM15',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H15(:,j)=H15(:,j).*((Phi'*Psi*B15*hatM1515(j,:)'+aa)./(Phi'*Psi*B15*B15'*Psi'*Phi*H15(:,j)+alpha*X(:,j)+bb*H15(:,j)+eps));
end

end








%16p
[H16,B16] = Initialize2(n2,h1,KK,label16,real1)


[na,nb]=size(H16);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H16;H16',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:15
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'16(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=17:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'16(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B16(:,oo)=B16(:,oo).*((Psi'*Phi*H16*hatM1616(:,oo)+a)./(Psi'*Phi*H16*H16'*Phi'*Psi*B16(:,oo)+b*B16(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:15
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM16',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=17:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM16',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H16(:,j)=H16(:,j).*((Phi'*Psi*B16*hatM1616(j,:)'+aa)./(Phi'*Psi*B16*B16'*Psi'*Phi*H16(:,j)+alpha*X(:,j)+bb*H16(:,j)+eps));
end

end



%17p
[H17,B17] = Initialize2(n2,h1,KK,label17,real1)


[na,nb]=size(H17);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H17;H17',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:16
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'17(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=18:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'17(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B17(:,oo)=B17(:,oo).*((Psi'*Phi*H17*hatM1717(:,oo)+a)./(Psi'*Phi*H17*H17'*Phi'*Psi*B17(:,oo)+b*B17(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:16
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM17',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=18:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM17',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H17(:,j)=H17(:,j).*((Phi'*Psi*B17*hatM1717(j,:)'+aa)./(Phi'*Psi*B17*B17'*Psi'*Phi*H17(:,j)+alpha*X(:,j)+bb*H17(:,j)+eps));
end

end


%18p
[H18,B18] = Initialize2(n2,h1,KK,label18,real1)


[na,nb]=size(H18);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H18;H18',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:17
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'18(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=19:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'18(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B18(:,oo)=B18(:,oo).*((Psi'*Phi*H18*hatM1818(:,oo)+a)./(Psi'*Phi*H18*H18'*Phi'*Psi*B18(:,oo)+b*B18(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:17
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM18',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=19:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM18',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H18(:,j)=H18(:,j).*((Phi'*Psi*B18*hatM1818(j,:)'+aa)./(Phi'*Psi*B18*B18'*Psi'*Phi*H18(:,j)+alpha*X(:,j)+bb*H18(:,j)+eps));
end

end


%19p
[H19,B19] = Initialize2(n2,h1,KK,label19,real1)

[na,nb]=size(H19);
zero1=zeros(na,na);
zero2=zeros(nb,nb);

for i=1:ll
X=zeros(na,nb);
S=[zero1,H19;H19',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:18
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'19(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=20:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'19(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B19(:,oo)=B19(:,oo).*((Psi'*Phi*H19*hatM1919(:,oo)+a)./(Psi'*Phi*H19*H19'*Phi'*Psi*B19(:,oo)+b*B19(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:18
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM19',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=20:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM19',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H19(:,j)=H19(:,j).*((Phi'*Psi*B19*hatM1919(j,:)'+aa)./(Phi'*Psi*B19*B19'*Psi'*Phi*H19(:,j)+alpha*X(:,j)+bb*H19(:,j)+eps));
end

end


%20p
[H20,B20] = Initialize2(n2,h1,KK,label20,real1)


[na,nb]=size(H20);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H20;H20',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:19
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'20(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=21:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'20(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B20(:,oo)=B20(:,oo).*((Psi'*Phi*H20*hatM2020(:,oo)+a)./(Psi'*Phi*H20*H20'*Phi'*Psi*B20(:,oo)+b*B20(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:19
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM20',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=21:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM20',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H20(:,j)=H20(:,j).*((Phi'*Psi*B20*hatM2020(j,:)'+aa)./(Phi'*Psi*B20*B20'*Psi'*Phi*H20(:,j)+alpha*X(:,j)+bb*H20(:,j)+eps));
end

end


%20p
[H21,B21] = Initialize2(n2,h1,KK,label21,real1)


[na,nb]=size(H21);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H21;H21',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:20
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'21(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=22:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'21(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B21(:,oo)=B21(:,oo).*((Psi'*Phi*H21*hatM2121(:,oo)+a)./(Psi'*Phi*H21*H21'*Phi'*Psi*B21(:,oo)+b*B21(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:20
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM21',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=22:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM21',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H21(:,j)=H21(:,j).*((Phi'*Psi*B21*hatM2121(j,:)'+aa)./(Phi'*Psi*B21*B21'*Psi'*Phi*H21(:,j)+alpha*X(:,j)+bb*H21(:,j)+eps));
end

end



%22p
[H22,B22] = Initialize2(n2,h1,KK,label22,real1)


[na,nb]=size(H22);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H22;H22',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:21
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'22(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=23:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'22(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B22(:,oo)=B22(:,oo).*((Psi'*Phi*H22*hatM2222(:,oo)+a)./(Psi'*Phi*H22*H22'*Phi'*Psi*B22(:,oo)+b*B22(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:21
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM22',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=23:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM22',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H22(:,j)=H22(:,j).*((Phi'*Psi*B22*hatM2222(j,:)'+aa)./(Phi'*Psi*B22*B22'*Psi'*Phi*H22(:,j)+alpha*X(:,j)+bb*H22(:,j)+eps));
end

end


%23p
[H23,B23] = Initialize2(n2,h1,KK,label23,real1)

[na,nb]=size(H23);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H23;H23',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:22
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'23(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=24:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'23(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B23(:,oo)=B23(:,oo).*((Psi'*Phi*H23*hatM2323(:,oo)+a)./(Psi'*Phi*H23*H23'*Phi'*Psi*B23(:,oo)+b*B23(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:22
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM23',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=24:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM23',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H23(:,j)=H23(:,j).*((Phi'*Psi*B23*hatM2323(j,:)'+aa)./(Phi'*Psi*B23*B23'*Psi'*Phi*H23(:,j)+alpha*X(:,j)+bb*H23(:,j)+eps));
end

end



%24p
[H24,B24] = Initialize2(n2,h1,KK,label24,real1)

[na,nb]=size(H24);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H24;H24',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:23
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'24(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=25:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'24(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B24(:,oo)=B24(:,oo).*((Psi'*Phi*H24*hatM2424(:,oo)+a)./(Psi'*Phi*H24*H24'*Phi'*Psi*B24(:,oo)+b*B24(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:23
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM24',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=25:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM24',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H24(:,j)=H24(:,j).*((Phi'*Psi*B24*hatM2424(j,:)'+aa)./(Phi'*Psi*B24*B24'*Psi'*Phi*H24(:,j)+alpha*X(:,j)+bb*H24(:,j)+eps));
end

end



%25p
[H25,B25] = Initialize2(n2,h1,KK,label25,real1)

[na,nb]=size(H25);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H25;H25',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:24
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'25(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=26:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'25(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B25(:,oo)=B25(:,oo).*((Psi'*Phi*H25*hatM2525(:,oo)+a)./(Psi'*Phi*H25*H25'*Phi'*Psi*B25(:,oo)+b*B25(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:24
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM25',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=26:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM25',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H25(:,j)=H25(:,j).*((Phi'*Psi*B25*hatM2525(j,:)'+aa)./(Phi'*Psi*B25*B25'*Psi'*Phi*H25(:,j)+alpha*X(:,j)+bb*H25(:,j)+eps));
end

end






%25p
[H26,B26] = Initialize2(n2,h1,KK,label26,real1)

[na,nb]=size(H26);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H26;H26',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:25
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'26(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=27:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'26(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B26(:,oo)=B26(:,oo).*((Psi'*Phi*H26*hatM2626(:,oo)+a)./(Psi'*Phi*H26*H26'*Phi'*Psi*B26(:,oo)+b*B26(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:25
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM26',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=27:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM26',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H26(:,j)=H26(:,j).*((Phi'*Psi*B26*hatM2626(j,:)'+aa)./(Phi'*Psi*B26*B26'*Psi'*Phi*H26(:,j)+alpha*X(:,j)+bb*H26(:,j)+eps));
end

end




%25p
[H27,B27] = Initialize2(n2,h1,KK,label27,real1)


[na,nb]=size(H27);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H27;H27',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:26
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'27(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=28:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'27(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B27(:,oo)=B27(:,oo).*((Psi'*Phi*H27*hatM2727(:,oo)+a)./(Psi'*Phi*H27*H27'*Phi'*Psi*B27(:,oo)+b*B27(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:26
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM27',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=28:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM27',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H27(:,j)=H27(:,j).*((Phi'*Psi*B27*hatM2727(j,:)'+aa)./(Phi'*Psi*B27*B27'*Psi'*Phi*H27(:,j)+alpha*X(:,j)+bb*H27(:,j)+eps));
end

end





%25p
[H28,B28] = Initialize2(n2,h1,KK,label28,real1)


[na,nb]=size(H28);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H28;H28',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:27
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'28(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=29:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'28(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B28(:,oo)=B28(:,oo).*((Psi'*Phi*H28*hatM2828(:,oo)+a)./(Psi'*Phi*H28*H28'*Phi'*Psi*B28(:,oo)+b*B28(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:27
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM28',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=29:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM28',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H28(:,j)=H28(:,j).*((Phi'*Psi*B28*hatM2828(j,:)'+aa)./(Phi'*Psi*B28*B28'*Psi'*Phi*H28(:,j)+alpha*X(:,j)+bb*H28(:,j)+eps));
end

end





%29p
[H29,B29] = Initialize2(n2,h1,KK,label29,real1)

[na,nb]=size(H29);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H29;H29',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:28
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'29(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=30:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'29(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B29(:,oo)=B29(:,oo).*((Psi'*Phi*H29*hatM2929(:,oo)+a)./(Psi'*Phi*H29*H29'*Phi'*Psi*B29(:,oo)+b*B29(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:28
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM29',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=30:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM29',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H29(:,j)=H29(:,j).*((Phi'*Psi*B29*hatM2929(j,:)'+aa)./(Phi'*Psi*B29*B29'*Psi'*Phi*H29(:,j)+alpha*X(:,j)+bb*H29(:,j)+eps));
end

end


%30p
[H30,B30] = Initialize2(n2,h1,KK,label30,real1)

[na,nb]=size(H30);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H30;H30',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:29
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'30(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=31:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'30(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B30(:,oo)=B30(:,oo).*((Psi'*Phi*H30*hatM3030(:,oo)+a)./(Psi'*Phi*H30*H30'*Phi'*Psi*B30(:,oo)+b*B30(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:29
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM30',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=31:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM30',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H30(:,j)=H30(:,j).*((Phi'*Psi*B30*hatM3030(j,:)'+aa)./(Phi'*Psi*B30*B30'*Psi'*Phi*H30(:,j)+alpha*X(:,j)+bb*H30(:,j)+eps));
end

end






%31p
[H31,B31] = Initialize2(n2,h1,KK,label31,real1)

[na,nb]=size(H31);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H31;H31',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:30
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'31(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=32:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'31(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B31(:,oo)=B31(:,oo).*((Psi'*Phi*H31*hatM3131(:,oo)+a)./(Psi'*Phi*H31*H31'*Phi'*Psi*B31(:,oo)+b*B31(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:30
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM31',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=32:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM31',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H31(:,j)=H31(:,j).*((Phi'*Psi*B31*hatM3131(j,:)'+aa)./(Phi'*Psi*B31*B31'*Psi'*Phi*H31(:,j)+alpha*X(:,j)+bb*H31(:,j)+eps));
end

end



%32p
[H32,B32] = Initialize2(n2,h1,KK,label32,real1)


[na,nb]=size(H32);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H32;H32',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:31
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'32(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=33:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'32(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B32(:,oo)=B32(:,oo).*((Psi'*Phi*H32*hatM3232(:,oo)+a)./(Psi'*Phi*H32*H32'*Phi'*Psi*B32(:,oo)+b*B32(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:31
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM32',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=33:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM32',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H32(:,j)=H32(:,j).*((Phi'*Psi*B32*hatM3232(j,:)'+aa)./(Phi'*Psi*B32*B32'*Psi'*Phi*H32(:,j)+alpha*X(:,j)+bb*H32(:,j)+eps));
end

end



%33p
[H33,B33] = Initialize2(n2,h1,KK,label33,real1)

[na,nb]=size(H33);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H33;H33',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:32
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'33(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=34:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'33(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B33(:,oo)=B33(:,oo).*((Psi'*Phi*H33*hatM3333(:,oo)+a)./(Psi'*Phi*H33*H33'*Phi'*Psi*B33(:,oo)+b*B33(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:32
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM33',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=34:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM33',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H33(:,j)=H33(:,j).*((Phi'*Psi*B33*hatM3333(j,:)'+aa)./(Phi'*Psi*B33*B33'*Psi'*Phi*H33(:,j)+alpha*X(:,j)+bb*H33(:,j)+eps));
end

end






%34p
[H34,B34] = Initialize2(n2,h1,KK,label34,real1)

[na,nb]=size(H34);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H34;H34',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:33
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'34(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=35:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'34(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B34(:,oo)=B34(:,oo).*((Psi'*Phi*H34*hatM3434(:,oo)+a)./(Psi'*Phi*H34*H34'*Phi'*Psi*B34(:,oo)+b*B34(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:33
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM34',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=35:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM34',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H34(:,j)=H34(:,j).*((Phi'*Psi*B34*hatM3434(j,:)'+aa)./(Phi'*Psi*B34*B34'*Psi'*Phi*H34(:,j)+alpha*X(:,j)+bb*H34(:,j)+eps));
end

end













%35p
[H35,B35] = Initialize2(n2,h1,KK,label35,real1)

[na,nb]=size(H35);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H35;H35',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:34
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'35(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=36:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'35(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B35(:,oo)=B35(:,oo).*((Psi'*Phi*H35*hatM3535(:,oo)+a)./(Psi'*Phi*H35*H35'*Phi'*Psi*B35(:,oo)+b*B35(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:34
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM35',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=36:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM35',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H35(:,j)=H35(:,j).*((Phi'*Psi*B35*hatM3535(j,:)'+aa)./(Phi'*Psi*B35*B35'*Psi'*Phi*H35(:,j)+alpha*X(:,j)+bb*H35(:,j)+eps));
end

end





%36p
[H36,B36] = Initialize2(n2,h1,KK,label36,real1)

[na,nb]=size(H36);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H36;H36',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:35
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'36(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=37:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'36(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B36(:,oo)=B36(:,oo).*((Psi'*Phi*H36*hatM3636(:,oo)+a)./(Psi'*Phi*H36*H36'*Phi'*Psi*B36(:,oo)+b*B36(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:35
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM36',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=37:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM36',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H36(:,j)=H36(:,j).*((Phi'*Psi*B36*hatM3636(j,:)'+aa)./(Phi'*Psi*B36*B36'*Psi'*Phi*H36(:,j)+alpha*X(:,j)+bb*H36(:,j)+eps));
end

end




%31p
[H37,B37] = Initialize2(n2,h1,KK,label37,real1)

[na,nb]=size(H37);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H37;H37',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:36
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'37(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=38:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'37(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B37(:,oo)=B37(:,oo).*((Psi'*Phi*H37*hatM3737(:,oo)+a)./(Psi'*Phi*H37*H37'*Phi'*Psi*B37(:,oo)+b*B37(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:36
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM37',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=38:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM37',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H37(:,j)=H37(:,j).*((Phi'*Psi*B37*hatM3737(j,:)'+aa)./(Phi'*Psi*B37*B37'*Psi'*Phi*H37(:,j)+alpha*X(:,j)+bb*H37(:,j)+eps));
end

end





%38p
[H38,B38] = Initialize2(n2,h1,KK,label38,real1)

[na,nb]=size(H38);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H38;H38',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:37
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'38(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=39:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'38(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B38(:,oo)=B38(:,oo).*((Psi'*Phi*H38*hatM3838(:,oo)+a)./(Psi'*Phi*H38*H38'*Phi'*Psi*B38(:,oo)+b*B38(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:37
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM38',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=39:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM38',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H38(:,j)=H38(:,j).*((Phi'*Psi*B38*hatM3838(j,:)'+aa)./(Phi'*Psi*B38*B38'*Psi'*Phi*H38(:,j)+alpha*X(:,j)+bb*H38(:,j)+eps));
end

end





%39p
[H39,B39] = Initialize2(n2,h1,KK,label39,real1)

[na,nb]=size(H39);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H39;H39',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:38
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'39(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=40:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'39(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B39(:,oo)=B39(:,oo).*((Psi'*Phi*H39*hatM3939(:,oo)+a)./(Psi'*Phi*H39*H39'*Phi'*Psi*B39(:,oo)+b*B39(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:38
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM39',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=40:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM39',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H39(:,j)=H39(:,j).*((Phi'*Psi*B39*hatM3939(j,:)'+aa)./(Phi'*Psi*B39*B39'*Psi'*Phi*H39(:,j)+alpha*X(:,j)+bb*H39(:,j)+eps));
end

end







%39p
[H40,B40] = Initialize2(n2,h1,KK,label40,real1)

[na,nb]=size(H40);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H40;H40',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:39
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'40(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=41:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'40(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B40(:,oo)=B40(:,oo).*((Psi'*Phi*H40*hatM4040(:,oo)+a)./(Psi'*Phi*H40*H40'*Phi'*Psi*B40(:,oo)+b*B40(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:39
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM40',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=41:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM40',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H40(:,j)=H40(:,j).*((Phi'*Psi*B40*hatM4040(j,:)'+aa)./(Phi'*Psi*B40*B40'*Psi'*Phi*H40(:,j)+alpha*X(:,j)+bb*H40(:,j)+eps));
end

end






%41p
[H41,B41] = Initialize2(n2,h1,KK,label41,real1)

[na,nb]=size(H41);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H41;H41',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:40
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'41(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=42:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'41(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B41(:,oo)=B41(:,oo).*((Psi'*Phi*H41*hatM4141(:,oo)+a)./(Psi'*Phi*H41*H41'*Phi'*Psi*B41(:,oo)+b*B41(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:40
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM41',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=42:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM41',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H41(:,j)=H41(:,j).*((Phi'*Psi*B41*hatM4141(j,:)'+aa)./(Phi'*Psi*B41*B41'*Psi'*Phi*H41(:,j)+alpha*X(:,j)+bb*H41(:,j)+eps));
end

end



%41p
[H42,B42] = Initialize2(n2,h1,KK,label42,real1)

[na,nb]=size(H42);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H42;H42',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:41
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'42(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=43:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'42(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B42(:,oo)=B42(:,oo).*((Psi'*Phi*H42*hatM4242(:,oo)+a)./(Psi'*Phi*H42*H42'*Phi'*Psi*B42(:,oo)+b*B42(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:41
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM42',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=43:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM42',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H42(:,j)=H42(:,j).*((Phi'*Psi*B42*hatM4242(j,:)'+aa)./(Phi'*Psi*B42*B42'*Psi'*Phi*H42(:,j)+alpha*X(:,j)+bb*H42(:,j)+eps));
end

end






%43p
[H43,B43] = Initialize2(n2,h1,KK,label43,real1)

[na,nb]=size(H43);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H43;H43',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:42
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'43(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=44:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'43(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B43(:,oo)=B43(:,oo).*((Psi'*Phi*H43*hatM4343(:,oo)+a)./(Psi'*Phi*H43*H43'*Phi'*Psi*B43(:,oo)+b*B43(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:42
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM43',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=44:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM43',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H43(:,j)=H43(:,j).*((Phi'*Psi*B43*hatM4343(j,:)'+aa)./(Phi'*Psi*B43*B43'*Psi'*Phi*H43(:,j)+alpha*X(:,j)+bb*H43(:,j)+eps));
end

end






%44p
[H44,B44] = Initialize2(n2,h1,KK,label44,real1)

[na,nb]=size(H44);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H44;H44',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:43
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'44(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=45:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'44(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B44(:,oo)=B44(:,oo).*((Psi'*Phi*H44*hatM4444(:,oo)+a)./(Psi'*Phi*H44*H44'*Phi'*Psi*B44(:,oo)+b*B44(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:43
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM44',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=45:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM44',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H44(:,j)=H44(:,j).*((Phi'*Psi*B44*hatM4444(j,:)'+aa)./(Phi'*Psi*B44*B44'*Psi'*Phi*H44(:,j)+alpha*X(:,j)+bb*H44(:,j)+eps));
end

end









%45p
[H45,B45] = Initialize2(n2,h1,KK,label45,real1)

[na,nb]=size(H45);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H45;H45',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:44
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'45(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=46:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'45(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B45(:,oo)=B45(:,oo).*((Psi'*Phi*H45*hatM4545(:,oo)+a)./(Psi'*Phi*H45*H45'*Phi'*Psi*B45(:,oo)+b*B45(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:44
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM45',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=46:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM45',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H45(:,j)=H45(:,j).*((Phi'*Psi*B45*hatM4545(j,:)'+aa)./(Phi'*Psi*B45*B45'*Psi'*Phi*H45(:,j)+alpha*X(:,j)+bb*H45(:,j)+eps));
end

end




%46p
[H46,B46] = Initialize2(n2,h1,KK,label46,real1)

[na,nb]=size(H46);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H46;H46',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:45
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'46(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=47:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'46(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B46(:,oo)=B46(:,oo).*((Psi'*Phi*H46*hatM4646(:,oo)+a)./(Psi'*Phi*H46*H46'*Phi'*Psi*B46(:,oo)+b*B46(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:45
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM46',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=47:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM46',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H46(:,j)=H46(:,j).*((Phi'*Psi*B46*hatM4646(j,:)'+aa)./(Phi'*Psi*B46*B46'*Psi'*Phi*H46(:,j)+alpha*X(:,j)+bb*H46(:,j)+eps));
end

end




%47p
[H47,B47] = Initialize2(n2,h1,KK,label47,real1)

[na,nb]=size(H47);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H47;H47',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:46
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'47(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=48:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'47(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B47(:,oo)=B47(:,oo).*((Psi'*Phi*H47*hatM4747(:,oo)+a)./(Psi'*Phi*H47*H47'*Phi'*Psi*B47(:,oo)+b*B47(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:46
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM47',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=48:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM47',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H47(:,j)=H47(:,j).*((Phi'*Psi*B47*hatM4747(j,:)'+aa)./(Phi'*Psi*B47*B47'*Psi'*Phi*H47(:,j)+alpha*X(:,j)+bb*H47(:,j)+eps));
end

end




%48p
[H48,B48] = Initialize2(n2,h1,KK,label48,real1)

[na,nb]=size(H48);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H48;H48',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:47
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'48(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=49:50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'48(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B48(:,oo)=B48(:,oo).*((Psi'*Phi*H48*hatM4848(:,oo)+a)./(Psi'*Phi*H48*H48'*Phi'*Psi*B48(:,oo)+b*B48(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:47
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM48',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=49:50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM48',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H48(:,j)=H48(:,j).*((Phi'*Psi*B48*hatM4848(j,:)'+aa)./(Phi'*Psi*B48*B48'*Psi'*Phi*H48(:,j)+alpha*X(:,j)+bb*H48(:,j)+eps));
end

end





%48p
[H49,B49] = Initialize2(n2,h1,KK,label49,real1)

[na,nb]=size(H49);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H49;H49',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:48
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'49(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
for ok=50
eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'49(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
end
B49(:,oo)=B49(:,oo).*((Psi'*Phi*H49*hatM4949(:,oo)+a)./(Psi'*Phi*H49*H49'*Phi'*Psi*B49(:,oo)+b*B49(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:48
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM49',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
for ok=50
eval(['aa=aa+[M00,M0',num2str(ok),']*hatM49',num2str(ok),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
end
H49(:,j)=H49(:,j).*((Phi'*Psi*B49*hatM4949(j,:)'+aa)./(Phi'*Psi*B49*B49'*Psi'*Phi*H49(:,j)+alpha*X(:,j)+bb*H49(:,j)+eps));
end

end





%50p
[H50,B50] = Initialize2(n2,h1,KK,label50,real1)

[na,nb]=size(H50);
zero1=zeros(na,na);
zero2=zeros(nb,nb);



for i=1:ll
X=zeros(na,nb);
S=[zero1,H50;H50',zero2];
D=diag(sum(S,2));
LS=D-S;
LS=full(LS);
[aa,bb]=eig(LS);
F=aa(:,1:KK);

for ii=1:na

for jj=1:nb

X(ii,jj)=norm(F(ii,:)-F(na+jj,:),2);

end

end


a=0;b=0;
for oo=na+1:nb
for ook=1:49
eval(['a=a+[M00;MB',num2str(ook),'0]''*hatM',num2str(ook),'50(:,oo)',';']);
eval(['b=b+[M00;MB',num2str(ook),'0]''*[M00;MB',num2str(ook),'0]',';']);
end
%for ok=49:50
%eval(['a=a+[M00;MB',num2str(ok),'0]''*hatM',num2str(ok),'48(:,oo)',';']);
%eval(['b=b+[M00;MB',num2str(ok),'0]''*[M00;MB',num2str(ok),'0]',';']);
%end
B50(:,oo)=B50(:,oo).*((Psi'*Phi*H50*hatM5050(:,oo)+a)./(Psi'*Phi*H50*H50'*Phi'*Psi*B50(:,oo)+b*B50(:,oo)+eps));
end


aa=0;bb=0;
for j=na+1:nb
for ook=1:49
eval(['aa=aa+[M00,M0',num2str(ook),']*hatM50',num2str(ook),'(j,:)''',';']);
eval(['bb=bb+[M00,M0',num2str(ook),']*[M00,M0',num2str(ook),']''',';']);
end
%for ok=49:50
%eval(['aa=aa+[M00,M0',num2str(ok),']*hatM48',num2str(ok),'(j,:)''',';']);
%eval(['bb=bb+[M00,M0',num2str(ok),']*[M00,M0',num2str(ok),']''',';']);
%end
H50(:,j)=H50(:,j).*((Phi'*Psi*B50*hatM5050(j,:)'+aa)./(Phi'*Psi*B50*B50'*Psi'*Phi*H50(:,j)+alpha*X(:,j)+bb*H50(:,j)+eps));
end

end



WW1=Phi*H1;
WW2=Phi*H2;
WW3=Phi*H3;
WW4=Phi*H4;
WW5=Phi*H5;
WW6=Phi*H6;
WW7=Phi*H7;
WW8=Phi*H8;
WW9=Phi*H9;
WW10=Phi*H10;
WW11=Phi*H11;
WW12=Phi*H12;
WW13=Phi*H13;
WW14=Phi*H14;
WW15=Phi*H15;
WW16=Phi*H16;
WW17=Phi*H17;
WW18=Phi*H18;
WW19=Phi*H19;
WW20=Phi*H20;
WW21=Phi*H21;
WW22=Phi*H22;
WW23=Phi*H23;
WW24=Phi*H24;
WW25=Phi*H25;
WW26=Phi*H26;
WW27=Phi*H27;
WW28=Phi*H28;
WW29=Phi*H29;
WW30=Phi*H30;
WW31=Phi*H31;
WW32=Phi*H32;
WW33=Phi*H33;
WW34=Phi*H34;
WW35=Phi*H35;
WW36=Phi*H36;
WW37=Phi*H37;
WW38=Phi*H38;
WW39=Phi*H39;
WW40=Phi*H40;
WW41=Phi*H41;
WW42=Phi*H42;
WW43=Phi*H43;
WW44=Phi*H44;
WW45=Phi*H45;
WW46=Phi*H46;
WW47=Phi*H47;
WW48=Phi*H48;
WW49=Phi*H49;
WW50=Phi*H50;
WW1=WW1';
WW2=WW2';
WW3=WW3';
WW4=WW4';
WW5=WW5';
WW6=WW6';
WW7=WW7';
WW8=WW8';
WW9=WW9';
WW10=WW10';
WW11=WW11';
WW12=WW12';
WW13=WW13';
WW14=WW14';
WW15=WW15';
WW16=WW16';
WW17=WW17';
WW18=WW18';
WW19=WW19';
WW20=WW20';
WW21=WW21';
WW22=WW22';
WW23=WW23';
WW24=WW24';
WW25=WW25';
WW26=WW26';
WW27=WW27';
WW28=WW28';
WW29=WW29';
WW30=WW30';
WW31=WW31';
WW32=WW32';
WW33=WW33';
WW34=WW34';
WW35=WW35';
WW36=WW36';
WW37=WW37';
WW38=WW38';
WW39=WW39';
WW40=WW40';
WW41=WW41';
WW42=WW42';
WW43=WW43';
WW44=WW44';
WW45=WW45';
WW46=WW46';
WW47=WW47';
WW48=WW48';
WW49=WW49';
WW50=WW50';


Whole=zeros(n,n2);
Whole(landmark,:)=WW1(1:n2,:);
Whole(label1,:)=WW1(n2+1:n2+h1,:);
Whole(label2,:)=WW2(n2+1:n2+h1,:);
Whole(label3,:)=WW3(n2+1:n2+h1,:);
Whole(label4,:)=WW4(n2+1:n2+h1,:);
Whole(label5,:)=WW5(n2+1:n2+h1,:);
Whole(label6,:)=WW6(n2+1:n2+h1,:);
Whole(label7,:)=WW7(n2+1:n2+h1,:);
Whole(label8,:)=WW8(n2+1:n2+h1,:);
Whole(label9,:)=WW9(n2+1:n2+h1,:);
Whole(label10,:)=WW10(n2+1:n2+h1,:);
Whole(label11,:)=WW11(n2+1:n2+h1,:);
Whole(label12,:)=WW12(n2+1:n2+h1,:);
Whole(label13,:)=WW13(n2+1:n2+h1,:);
Whole(label14,:)=WW14(n2+1:n2+h1,:);
Whole(label15,:)=WW15(n2+1:n2+h1,:);
Whole(label16,:)=WW16(n2+1:n2+h1,:);
Whole(label17,:)=WW17(n2+1:n2+h1,:);
Whole(label18,:)=WW18(n2+1:n2+h1,:);
Whole(label19,:)=WW19(n2+1:n2+h1,:);
Whole(label20,:)=WW20(n2+1:n2+h1,:);
Whole(label21,:)=WW21(n2+1:n2+h1,:);
Whole(label22,:)=WW22(n2+1:n2+h1,:);
Whole(label23,:)=WW23(n2+1:n2+h1,:);
Whole(label24,:)=WW24(n2+1:n2+h1,:);
Whole(label25,:)=WW25(n2+1:n2+h1,:);
Whole(label26,:)=WW26(n2+1:n2+h1,:);
Whole(label27,:)=WW27(n2+1:n2+h1,:);
Whole(label28,:)=WW28(n2+1:n2+h1,:);
Whole(label29,:)=WW29(n2+1:n2+h1,:);
Whole(label30,:)=WW30(n2+1:n2+h1,:);
Whole(label31,:)=WW31(n2+1:n2+h1,:);
Whole(label32,:)=WW32(n2+1:n2+h1,:);
Whole(label33,:)=WW33(n2+1:n2+h1,:);
Whole(label34,:)=WW34(n2+1:n2+h1,:);
Whole(label35,:)=WW35(n2+1:n2+h1,:);
Whole(label36,:)=WW36(n2+1:n2+h1,:);
Whole(label37,:)=WW37(n2+1:n2+h1,:);
Whole(label38,:)=WW38(n2+1:n2+h1,:);
Whole(label39,:)=WW39(n2+1:n2+h1,:);
Whole(label40,:)=WW40(n2+1:n2+h1,:);
Whole(label41,:)=WW41(n2+1:n2+h1,:);
Whole(label42,:)=WW42(n2+1:n2+h1,:);
Whole(label43,:)=WW43(n2+1:n2+h1,:);
Whole(label44,:)=WW44(n2+1:n2+h1,:);
Whole(label45,:)=WW45(n2+1:n2+h1,:);
Whole(label46,:)=WW46(n2+1:n2+h1,:);
Whole(label47,:)=WW47(n2+1:n2+h1,:);
Whole(label48,:)=WW48(n2+1:n2+h1,:);
Whole(label49,:)=WW49(n2+1:n2+h1,:);
Whole(label50,:)=WW50(n2+1:n2+h1,:);
AA=sum(Whole,2);
Whole=Whole./AA;


end
