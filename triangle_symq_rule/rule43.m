function [ x, y, w ] = rule43 ( )

%*****************************************************************************80
%
%% RULE43 returns the rule of degree 43.
%
%  Discussion:
%
%    Order 43 (339 pts)
%    1/6 data for 43-th order quadrature with 65 nodes.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    26 June 2014
%
%  Author:
%
%    Original FORTRAN77 version by Hong Xiao, Zydrunas Gimbutas.
%    This MATLAB version by John Burkardt.
%
%  Parameters:
%
%    Output, real X(*), Y(*), the coordinates of the nodes.
%
%    Output, real W(*), the weights.
%
  x = [ ...
      0.00000000000000000000000000000000, ...
      0.00000000000000000000000000000000, ...
     -0.39506733155766901012421952821161, ...
      0.00000000000000000000000000000000, ...
      0.00000000000000000000000000000000, ...
     -0.24646837298065380013273617416435, ...
     -0.79575263644167424708927638836510, ...
     -0.48253886188633001772041546826783, ...
     -0.62546966261193450084215465475134E-01, ...
     -0.30130814355531906520968875282228, ...
      0.00000000000000000000000000000000, ...
     -0.35231165502281585353535246732493, ...
      0.00000000000000000000000000000000, ...
     -0.12800312652182834294317879260650, ...
      0.00000000000000000000000000000000, ...
     -0.75118628320269714215689196084969, ...
     -0.67034428298913296399375404066474, ...
     -0.77580876066209624496610974380034, ...
      0.00000000000000000000000000000000, ...
     -0.12785487625900558619560024121639, ...
      0.00000000000000000000000000000000, ...
     -0.71268785841843536059482927597042, ...
     -0.27040014117930207740167640614761, ...
      0.00000000000000000000000000000000, ...
     -0.18478688196683115844840486556670, ...
      0.00000000000000000000000000000000, ...
     -0.80938151535440202130076995993744, ...
     -0.31942848667068561771894552587106, ...
     -0.85468012516227660038415955640997E-01, ...
     -0.25825613481914215491217537746903, ...
     -0.58279946491371434111606534307889, ...
     -0.87969623175882104649066373698787, ...
     -0.46561039262024648141549373583729, ...
     -0.93340399559638336764338113699127, ...
     -0.51396050819491791778081081792183, ...
     -0.61691723863061563788005694821551, ...
     -0.86363081428402156734207066959522, ...
     -0.97099189034945842829889245820946, ...
      0.00000000000000000000000000000000, ...
      0.00000000000000000000000000000000, ...
     -0.62361278877871758607587901074940, ...
     -0.91989119779265366986023199875079, ...
      0.00000000000000000000000000000000, ...
     -0.57692441054824302159307937523806, ...
     -0.50723010453494962638105205800859, ...
     -0.84394330147763359879321357561682E-01, ...
     -0.72274543590291663139776270288902, ...
     -0.47250099165753816338998461789401, ...
     -0.35080029727614026576846631364065, ...
     -0.12275092202821139885819853243053, ...
     -0.38479753550946700083527634968480, ...
     -0.39605917796945196543812828983515, ...
     -0.84481754164315782828022282277629, ...
     -0.20507268425580293655253183641047, ...
     -0.52353562229447874684448906255323, ...
     -0.13693189087059081697918132267328, ...
     -0.62320689311818688506948006480502, ...
     -0.14379384782311729469209427032452, ...
     -0.27449236039881046467163004113221, ...
     -0.68227667429915713110204049156621, ...
      0.00000000000000000000000000000000, ...
     -0.40313963669589460865080761368403, ...
     -0.22073052548745090606319136542233, ...
      0.00000000000000000000000000000000, ...
      0.00000000000000000000000000000000 ];
  y = [ ... ...
     -0.27174781657834587367794828403112, ...
     -0.49274259095938795471287794986388, ...
     -0.32541690542417216472121438315947, ...
     -0.57450914029685444604595657642940, ...
      0.12846740408215895203363603738439, ...
     -0.52120501981219468628421175620930, ...
     -0.55585048147520898296581708536554, ...
     -0.33857300476573982851491415786097, ...
     -0.34294121393179207633049958993479, ...
     -0.32875457338449147616580244617275, ...
     -0.68781371078380984368245670302187E-01, ...
     -0.51594631133528140591593205811015, ...
     -0.56039688938398587880112568739761, ...
     -0.51600357027661430283719712442229, ...
      0.10406975917564771325612019382002E+01, ...
     -0.48071245484494572753863498860590, ...
     -0.46654018005672172190079466787693, ...
     -0.52493394350877366855931608373780, ...
     -0.53080573778005055886715862589101, ...
     -0.55199717395419102378360697714430, ...
      0.93744923795883541057323646131539, ...
     -0.55378528333018398654846926976093, ...
     -0.57306164103038438002759473015017, ...
      0.65329413919843916560086065083107, ...
     -0.32979522157781538320615791050048, ...
      0.11084041345444688623805682120094E+01, ...
     -0.57315735914007292751468298272925, ...
     -0.23933996521344827119141006030721, ...
     -0.46640357835051818210779901438991, ...
     -0.55450865650449884106657600267936, ...
     -0.47018294735939914621510849234674, ...
     -0.57282533435858176236473269144498, ...
     -0.51813075309225748766670475143277, ...
     -0.57275889464282222126170595591666, ...
     -0.57286153985489888900353792433004, ...
     -0.55262810787321224192869259072191, ...
     -0.55335026706806535430401211392438, ...
     -0.57303083539166774608654680411579, ...
      0.11458153208366305893213396871360E+01, ...
      0.50423840889193913255432466884584, ...
     -0.40338147343700279281658672539043, ...
     -0.55362560310096266386701313905319, ...
     -0.17054110158363053238654111959974, ...
     -0.51821251917615874954294201331871, ...
     -0.55343995679985670491884892559641, ...
     -0.25432761855273552279988165105579, ...
     -0.57294781282937958180985481791538, ...
     -0.46817056136138252363928334992228, ...
     -0.46671221117152839234190202161524, ...
     -0.15827564830985659745747052529915, ...
     -0.55206358961559880212009617361087, ...
     -0.57246915152619833238307709646113, ...
     -0.51822758166184266566614267250055, ...
     -0.24244875862513978976057242564588, ...
     -0.40871265880657287984484480492628, ...
     -0.57252078775710633720596892661685, ...
     -0.57257680220856426874713292476538, ...
     -0.40790874923298185895067251523869, ...
     -0.40488358656967401446800162607396, ...
     -0.51826247883638312778785904937525, ...
     -0.41416427390059670796562799333653, ...
     -0.40328359141014275624720285726773, ...
     -0.47052810769116907040147328262294, ...
      0.83299965359609554712354240867349, ...
      0.28006707539158895931997168962991 ];
  w = [ ... ...
      0.20267313231941893676520332064545E-02, ...
      0.16367671769150146246172346306318E-02, ...
      0.51493216424315589396152049973413E-02, ...
      0.40049166791821914724573044327252E-03, ...
      0.38679957027277816063713365008715E-02, ...
      0.34975453538986470037287749440995E-02, ...
      0.13692247906521867994012332715043E-02, ...
      0.50916564180668567506293917701109E-02, ...
      0.71541887598019862130827731596776E-02, ...
      0.67554356473948161976278050806714E-02, ...
      0.45197199185406262459677900374973E-02, ...
      0.35861506794982540830122357172132E-02, ...
      0.10622739063192419924108232636689E-02, ...
      0.40560451238345220270219217309857E-02, ...
      0.71306365950803849055449621912648E-03, ...
      0.28901178272685770916650253073937E-02, ...
      0.35628382297785204095556205282981E-02, ...
      0.23337289887646671489220572776197E-02, ...
      0.17876266669191564461852559716746E-02, ...
      0.27892998079816587686734710640336E-02, ...
      0.13320835956879952672184157241896E-02, ...
      0.18191641344329572250280779466083E-02, ...
      0.10907352970205207235715895372753E-02, ...
      0.27936513125358662464080516863599E-02, ...
      0.75818102244409073466682226454199E-02, ...
      0.31066065630647406501495742839881E-03, ...
      0.64045511782145175218433235311442E-03, ...
      0.79769491206495963710875582745134E-02, ...
      0.52105480536968519556750471994035E-02, ...
      0.25683586574526020251013582443614E-02, ...
      0.41796721048381089538295214085205E-02, ...
      0.54981489589321546105773135980457E-03, ...
      0.36900063605190763288766065453592E-02, ...
      0.40460366093556559458970343028029E-03, ...
      0.99764710822395591487080703901083E-03, ...
      0.21433057408916717136795809729450E-02, ...
      0.13181554039184077697417192202970E-02, ...
      0.24966385865177930712178241334390E-03, ...
      0.56415208115924918653995444365333E-04, ...
      0.35108086150369173319630529016857E-02, ...
      0.51624236567181411900078094419075E-02, ...
      0.96766243407032355999668290740009E-03, ...
      0.45731471950392280996000615522500E-02, ...
      0.34583136168620142190249880837043E-02, ...
      0.24237265422044902192234994737096E-02, ...
      0.77977816580077882796552949686740E-02, ...
      0.80588323551714052775101742970255E-03, ...
      0.50339349950361747376652268826760E-02, ...
      0.54331525883336925722484960144977E-02, ...
      0.88072094639810414255439357569340E-02, ...
      0.26943758842246860082040659620724E-02, ...
      0.11555336183140089850951172772477E-02, ...
      0.20764819925413973070582238653112E-02, ...
      0.83010524908151710705626972584161E-02, ...
      0.56231102351940614439232706639500E-02, ...
      0.12763777281762985620080832782995E-02, ...
      0.97128666683373741323713272921117E-03, ...
      0.69250253173029413525682166964403E-02, ...
      0.69755502078755805652513910381880E-02, ...
      0.32320158906108914651035701130350E-02, ...
      0.35091833149609820457735281284170E-02, ...
      0.66535574606795091616463991758331E-02, ...
      0.58357235029408977357372091365790E-02, ...
      0.21654064214107489596481597275945E-02, ...
      0.48130202892800976037200791733793E-02 ];

  return
end