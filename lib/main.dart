import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:xo/view_model/board.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => BoardVM(),
        builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(),
              home: const Scaffold(body: MyWidget()),
            ));
  }
}

var navyColor = const Color(0xff284C62);
var babyBlue = Color.fromARGB(255, 44, 111, 150);

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType) => SingleChildScrollView(
            child: Directionality(
                textDirection: TextDirection.rtl,
                child: Column(children: [
                  Header(subTitles: [
                    SubTitleText(content: "سوء التغذية "),
                  ]),
                  Image.network(
                      'https://www.darelhna.com/wp-content/uploads/2021/02/%D9%85%D8%A7_%D9%87%D9%88_%D8%BA%D8%B0%D8%A7%D8%A1_%D8%A7%D9%84%D8%B9%D9%82%D9%84.jpg'),
                  Container(color: navyColor, height: 5.h),

                  Image.network(
                      'https://th.bing.com/th/id/R.bc78a53263da811e44eafe8a8b25183a?rik=o900eTYFKbl%2bsQ&riu=http%3a%2f%2fwww.fao.org%2ffileadmin%2fuser_upload%2ffaoweb%2fICN2%2fimg%2fmedium_2_INFO-ar.JPG&ehk=LUxylGRjV4POMk%2fVoOZ%2f6KQspSP9QfPv09umcmvbrbk%3d&risl=&pid=ImgRaw&r=0')
                  //قرحة المعدة
                  ,
                  CustomExpansion(
                    title: 'سوء التغذية',
                    backGroundColor: babyBlue,
                    subTitleChildren: [],
                    children: [
                      ContentText(
                          content:
                              ' هو مصطلح يُستخدم للتعبير عن وضع لا يحصل فيه الجسم على كل المواد الغذائية الأساسية التي يحتاجها، أو على جزء منها '),
                      ContentText(
                          content:
                              'تتراوح حدة سوء التغذية بين الطفيفة الهامشية، وبين الحالات الشديدة التي تُسبب أضرارًا غير قابلة للإصلاح حتى ولو بقي الشخص على قيد الحياة'),
                      ContentText(content: ":الأطعمة المفيدة ف قرحة المعده"),
                      ContentText(
                          content:
                              'يتطور سوء التغذية المرضى تدريجيًا ويكون صعب التشخيص في بدايته، ومن شأنه أن يتفاقم إلى أن يُسبب ضررًا جسمانيًا كبيرًا، وتُساهم المعرفة المسبقة بأعراض سوء التغذية بإتاحة العلاج الفوري'),
                      ContentText(
                          content:
                              'عندما يكون سوء التغذية مرتبطًا بنقص في الطعام، أو بفهم خاطئ للحاجات الغذائية يكون على الجهات المسؤولة عن صحة الجمهور حل هذه المشكلة ومنع حدوثها من خلال الاهتمام بتوفير كميات كافية من الطعام، ومن خلال التوعية لأساليب التغذية السليمة، أما عندما تكون خلفية سوء التغذية مرضية، أو نتيجة الإهمال واضطرابات الأكل فإن المسؤولية تقع في هذه الحالة على الأطباء المعالجين')
                    ],
                  ),
                  vertical1SizedBox,

                  CustomExpansion(
                    title: 'أعراض سوء التغذية العامه',
                    backGroundColor: babyBlue.withOpacity(.8),
                    subTitleChildren: [],
                    children: [
                      ContentText(
                          content:
                              ' ⦁	فقدان الشهية وعدم الرغبة في تناول الطعام والشراب'),
                      ContentText(content: '⦁	التعب والشعور بعد الراحه'),
                      Image.asset('lib/assets/images/boy.png'),
                      ContentText(content: '⦁	صعوبة في التركيز'),
                      ContentText(content: '⦁	الشعور بالبرد'),
                      ContentText(content: '⦁ الاكتئاب'),
                      ContentText(
                          content: '⦁	هزل في العضلات أو الدهون في الجسم'),
                      ContentText(content: '⦁	زيادة خطر الإصابة بالأمراض'),
                      ContentText(content: '⦁	صعوبة التئام الجروح'),
                      ContentText(
                          content:
                              '⦁	كثرة التعرض لمضاعفات ما بعد العملية الجراحيه')
                    ],
                  ),
                  vertical1SizedBox,
                  //االرتجاع المعدي المرٌئً-

                  CustomExpansion(
                    title: ' أعراض سوء التغذية عند الأطفال',
                    backGroundColor: babyBlue.withOpacity(.8),
                    subTitleChildren: [],
                    children: [
                      ContentText(content: '⦁	بطء في النمو، وفقدان الوزن'),
                      ContentText(content: '⦁	التعب وفقدان الطاقة'),
                      ContentText(content: '⦁	القلق'),
                      ContentText(content: '⦁	بطء في التصرف وصعوبة في التعلم')
                    ],
                  ),
                  vertical1SizedBox,

                  CustomExpansion(
                    title: "أسباب وعوامل خطر سوء التغذية",
                    backGroundColor: babyBlue.withOpacity(.8),
                    subTitleChildren: [],
                    children: [
                      SectionSubTitleText(title: '⦁	قلة تناول الطعام'),
                      ContentText(
                          content:
                              'يحصل هذا النقص إذا لم يحصل الجسم على واحد أو أكثر من العناصر الحيوية والمطلوبة للقيام بوظائفه بصورة طبيعية، أو بسبب سوء  امتصاص المواد الغذائية الموجودة في قسم من الطعام رغم توفر الكمية والعناصر المطلوبة فيه.'),
                      Image.asset('lib/assets/images/women.png')
                    ],
                  ),
                  vertical1SizedBox,
                  CustomExpansion(
                    title:
                        "من أبرز العوامل التي تؤدي لقلة تناول الطعام ما يأتي",
                    backGroundColor: babyBlue.withOpacity(.8),
                    subTitleChildren: [],
                    children: [
                      ContentText(content: '⦁	الإصابة بالسرطان.'),
                      ContentText(content: '⦁	مشاكل في الكبد.'),
                      ContentText(
                          content: '⦁	مشاكل صحية تُسبب صعوبة في البلع.'),
                      ContentText(
                          content: '⦁	تناول بعض الأدوية التي تُسبب الغثيان.'),
                      SectionSubTitleText(title: 'مشاكل اقتصادية واجتماعية'),
                      ContentText(
                          content:
                              '⦁	سوء التغذية الشديد الناجم عن الجوع أو نقص الغذاء هي ظاهرة تُميز الدول النامية، أما في الدول المتطورة فيظهر هذا النوع من سوء التغذية لدى الطبقات الاجتماعية الاقتصادية المتدنية، أو نتيجة إهمال طبي أو في حالة الأشخاص الذين يُعانون من نزوات غذائية (Food faddism) غير طبيعية، وعلى الرغم من تناول كمية كافية من الطعام يُمكن أن ينجم سوء التغذية عن مرض مزمن صعب، أو نتيجة سوء امتصاص المواد الغذائية من الطعام في الجهاز الهضمي لسبب دائم أو مؤقت.'),
                      ContentText(
                          content:
                              '⦁	من الجدير بالذكر أيضًا أن النقص بمادة غذائية واحدة فقط مثل فيتامين معين يُعتبر هو الآخر سوء تغذية.'),
                      SectionSubTitleText(title: 'مشاكل في الصحة النفسية'),
                      ContentText(
                          content:
                              'ومن أبرز الأمراض النفسية التي تُسبب سوء التغذية:'),
                      ContentText(content: '⦁	الاكتئاب.'),
                      ContentText(content: '⦁	الخرف.'),
                      ContentText(content: 'انفصام⦁	'),
                      ContentText(
                          content:
                              '⦁	فقدان الشهية العصابي (Anorexia nervosa).'),
                      SectionSubTitleText(title: 'أمراض الجهاز الهضمي'),
                      ContentText(
                          content:
                              '⦁	قد تُسبب أمراض الجهاز الهضمي مشاكل في امتصاص الغذاء مما يُؤدي إلى سوء التغذية، ومن أهم هذه الأمراض:'),
                      ContentText(content: '⦁ مرض	كرون.'),
                      ContentText(content: '⦁	التهاب القولون التقرحي.'),
                      ContentText(content: '⦁	داء الزلاقي.'),
                      ContentText(content: '⦁	الإسهال أو الاستفراغ المتواصل.'),
                      SectionSubTitleText(
                          title: 'اضطرابات ناتجة عن شرب الكحول'),
                      ContentText(
                          content:
                              '⦁	قد يُسبب شرب الكحول التهاب المعدة، أو تلف في البنكرياس مما يُؤدي إلى صعوبة في هضم الطعام، أو امتصاص العناصر الغذائية منه مما يُؤدي إلى سوء التغذية.')
                    ],
                  ),
                  vertical1SizedBox,
                  CustomExpansion(
                      title: 'عوامل الخطرالأطفال',
                      subTitleChildren: [],
                      backGroundColor: babyBlue,
                      children: [
                        ContentText(
                            content:
                                '⦁	في أعقاب الحاجة الشديدة للمواد الغذائية الأساسية وللطاقة من أجل النمو، يكون الأطفال الرضع والأطفال في جيل النمو معرضين بشكل أسرع لضرر سوء التغذية، وسينجم عن ذلك إصابتهم بالنحول، وتأخر النمو والتطور، و⦁	فقر⦁	 ⦁	الدم، وعلامات نقص الفيتامينات.'),
                        Image.network(
                            'https://th.bing.com/th/id/R.78088c437ddb1c337752757d5d9b1c7c?rik=6kKn1erPNqm3Ig&pid=ImgRaw&r=0'),
                      ]),
                  vertical1SizedBox,
                  CustomExpansion(
                      title: 'الحمل والرضاعة',
                      subTitleChildren: [],
                      backGroundColor: babyBlue,
                      children: [
                        ContentText(
                            content:
                                '⦁	تحتم احتياجات الطفل توفير تغذية جيدة للأم، وقد يؤدي نقص الغذاء بشكل عام لحصول الولادة المبكرة، ويُمكن أن يُؤدي نقص حمض الفوليك في ⦁	غذاء⦁	 ⦁	الحامل إلى أضرار خلقية في الجهاز العصبي لدى الجنين، كما أن عدم الحصول على الفيتامين ب12 من شأنه أن يُؤدي لنقص في هذا الفيتامين لدى الطفل الرضيع.')
                      ]),
                  vertical1SizedBox,
                  CustomExpansion(
                      title: 'المسنون',
                      subTitleChildren: [],
                      backGroundColor: babyBlue,
                      children: [
                        ContentText(
                            content:
                                '⦁	عدم القدرة على تنظيم الحاجات الغذائية، أو سوء امتصاص المواد الغذائية خصوصًا الحديد قد يُسفر عن سوء تغذية لدى المسنين.'),
                        ContentText(content: '⦁	المرضى الأمراض المزمنة'),
                        ContentText(
                            content:
                                '⦁	الأمراض المرتبطة بسوء امتصاص المواد الغذائية، أو الأمراض التي تُشكل ضغطًا على الجسم تكون بالعادة مصحوبة بفقدان الشهية، تحتم الاهتمام بتوفير تغذية غنية لضمان قدرة الجسم على أداء وظائفه.')
                      ]),
                  vertical1SizedBox,
                  CustomExpansion(
                      title: 'مضاعفات سوء التغذية',
                      subTitleChildren: [],
                      backGroundColor: babyBlue,
                      children: [
                        ContentText(
                            content:
                                '⦁	ضعف	المناعة عند المريض وسرعة تعرضه للالتقاط العدوى.'),
                        ContentText(content: '⦁	مشاكل في التئام الجروح.'),
                        ContentText(
                            content:
                                '⦁	صعوبة في الموازنة بين الأملاح والسوائل داخل الجسم.'),
                        ContentText(content: '⦁	صعوبة التحكم في درجة الحرارة.')
                      ]),
                  vertical1SizedBox,
                  CustomExpansion(
                      title: 'تشخيص سوء التغذية',
                      subTitleChildren: [],
                      backGroundColor: babyBlue,
                      children: [
                        ContentText(content: '⦁	فحص الدم.'),
                        ContentText(
                            content:
                                '⦁	فحص لقياس العناصر الغذائية المشكوك فيها، ومن ضمنها: الحديد.'),
                        ContentText(
                            content:
                                '⦁	فحص ⦁	الألبومين لمعرفة نسبة البروتين في الدم والتأكد من عدم وجود أمراض الكلى أو الكبد.')
                      ]),
                  vertical1SizedBox,
                  CustomExpansion(
                      title: 'تشخيص سوء التغذية',
                      subTitleChildren: [],
                      backGroundColor: babyBlue,
                      children: [
                        ContentText(content: '⦁	فحص الدم.'),
                        ContentText(
                            content:
                                '⦁	فحص لقياس العناصر الغذائية المشكوك فيها، ومن ضمنها: الحديد.'),
                        ContentText(
                            content:
                                '⦁	فحص ⦁	الألبومين لمعرفة نسبة البروتين في الدم والتأكد من عدم وجود أمراض الكلى أو الكبد.')
                      ]),
                  vertical1SizedBox,
                  Image.network(
                      'https://i.pinimg.com/736x/f7/5c/2b/f75c2ba3be96c7d027701fe99489b907--healthy-eating-pyramid-healthy-eating-habits.jpg'),
                  vertical1SizedBox,
                  CustomExpansion(
                      title: 'علاج سوء التغذية',
                      subTitleChildren: [],
                      backGroundColor: babyBlue,
                      children: [
                        SectionSubTitleText(
                            title: 'علاج سوء التغذية في الحالات البسيطة'),
                        ContentText(
                            content: '⦁	تناول طعام مدعّم غني ⦁	بالبروتينات.'),
                        ContentText(
                            content:
                                '⦁	الحرص على تناول وجبات خفيفة بين الوجبات الرئيسية.'),
                        ContentText(
                            content: '⦁	شرب مشروبات مليئة بالسعرات الحرارية.'),
                        ContentText(
                            content:
                                '⦁	تجنب الحركة الزائدة والبقاء في المنزل.'),
                        ContentText(
                            content:
                                '⦁	في حال لم تفِ النصائح السابقة بالغرض قد يقوم الطبيب بصرف مكملات غذائية ومشروبات غنية بالسعرات والعناصر الغذائية.'),
                        SectionSubTitleText(
                            title: 'علاج حالات سوء التغذية الشديدة'),
                        ContentText(
                            content:
                                '⦁	في حال عدم استطاعة المريض بتناول الغذاء فمويًا، أو في حال تعرضه لمشكلة صحية تُعيق البلع قد يقوم الطبيب بتركيب أنبوب للتغذية يدخل من الأنف باتجاه المعدة مباشرةً، وقد تتم تغذية المريض عن طريق الوريد.'),
                        SectionSubTitleText(title: 'الوقاية من سوء التغذية'),
                        ContentText(
                            content: '⦁	الإكثار من تناول الخضراوات والفواكه.'),
                        ContentText(
                            content:
                                '⦁	تناول غذاء غني بالأطعمة النشوية، مثل: الأرز، والخبز، والبطاطا، والمعكرونة.'),
                        ContentText(
                            content: '⦁	شرب الحليب وتناول مشتقات الألبان.'),
                        ContentText(
                            content:
                                '⦁	الحرص على احتواء الغذاء على البروتين، ومن أهم الأغذية الغنية بالبروتين: ⦁	الأسماك، واللحوم، والبيض، والفاصوليا.')
                      ]),
                  //  ...gehazHadmy,
                  //  ...perfectWeight,
                  //  ...thinness
                ])))); //const GameBoard(),
  }
}

tableRow({required String weight, required String result}) {
  return DataRow(cells: [
    DataCell(ContentText(
      content: weight,
    )),
    DataCell(ContentText(
      content: result,
    ))
  ]);
}

List<Widget> thinness = [
  Header(subTitles: [
    SubTitleText(content: "النحافه"),
  ]),
  vertical1SizedBox,
  CustomExpansion(
      title: 'من هو النحيف',
      subTitleChildren: [],
      backGroundColor: babyBlue,
      children: [
        ContentText(
            content:
                'يمكن وصف شخص ما بأنه نحيف عندما يكون مؤشر كتلة الجسم لديه أقل من 18.5.لمعرفة مؤشر كتلة الجسم  :نسبة وزن الشخص الي طوله إما باستخدام :'),
        ContentText(
            content: '⦁	مربع الوزن بالكيلوغرام مقسومًا على الطول بالأمتار '),
        ContentText(
            content:
                '⦁	مربع الوزن الباوندات مضروبة في 703 ومقسومة على الطول بالبوصة'),
        DataTable(columns: [
          DataColumn(
            label: ContentText(
              content: 'التصنيف',
            ),
          ),
          DataColumn(
              label: ContentText(
            content: 'مؤشر كتلة الجسم - كغ / م2',
          ))
        ], rows: [
          tableRow(weight: 'نقص الوزن (نحافة شديدة)', result: "16.0 >"),
          tableRow(weight: 'نقص الوزن (نحافة معتدلة)', result: '16.9 - 16.0'),
          tableRow(weight: 'نقص الوزن (نحافة خفيفة)', result: '18.4 - 17.0'),
          tableRow(weight: 'وزن طبيعي', result: '24.9 - 18.5'),
          tableRow(
              result: '29.9 - 25.0', weight: '(ما قبل السمنة) زيادة في الوزن'),
          tableRow(result: '34.9 - 30.0', weight: 'سمنة درجة أولى'),
          tableRow(result: '39.9 - 35.0', weight: ' سمنة درجة ثانية'),
          tableRow(result: '≤40 ', weight: 'سمنة درجة ثالثة')
        ])
      ]),
  vertical1SizedBox,
  CustomExpansion(
      title: 'الأمراض التي قد تسببها النحافه',
      subTitleChildren: [],
      backGroundColor: babyBlue,
      children: [
        ContentText(
            content:
                '⦁	 قد يعاني العديد من الأشخاص المصابين بالنحافة من الضعف العام للجسم وصعوبة على التحمل بالإضافة إلى ضعف الجهاز المناعي،  وتكون عرضه عرضة للإصابة بالعدوى. وفي هذة الحالة يجب تصنيفها كأسباب أولية أو كامنة للوفاة إذا تم اتباعها بالأمراض المعدية والتي في تلك الحالة تعتبر أسباب تبعية أو ثانوية ناتجة عن المرض '),
        Divider(),
        ContentText(
            content:
                '⦁	من الممكن أن يتسبب انخفاض الوزن الحاد الناتج عن اضطرابات في الأكل أو بسبب ممارسة التمارين الرياضية المفرطة لدى النساء إلى انقطاع الطمث (غياب الحيض) أو العقم أو حدوث مضاعفات أثناء الحمل وذلك إذا ما كانت الزيادة الناتجة عن الحمل قليلة.'),
        Divider(),
        ContentText(
            content: '⦁	يمكن أن يتسبب سوء التغذية في فقر الدم وتساقط الشعر.'),
        Divider(),
        ContentText(
            content:
                '⦁	تُعد النحافة عامل ثابت على خطر الإصابة بمرض هشاشة العظام، حتى إذا ما كان المرء شاباً. ويظهر ذلك بوضوح في الأشخاص الذين يعانون من متلازمة نقص الطاقة النسبي في الرياضة والتي كانت تعرف في الماضي بثالوث الأنثى الرياضي حيث عندما يكون هناك اضطراب غذائي أو عند ممارسة الرياضة بشكل مفرط مما يتسبب في انقطاع الطمث، والذي بدوره يؤدي إلى تغيرات هرمونية أثناء الإباضة مما يتسبب في فقدان كثافة المعادن داخل العظام. وبعد حدوث انخفاض في كثافة معادن العظام، تبدأ الأصابة بالكسور العفوية الأولى، والتي غالباً ما يكون ضررها غير قابل للإصلاح.')
      ]),
  vertical1SizedBox,
  CustomExpansion(
      title: 'أسباب النحافة',
      subTitleChildren: [],
      backGroundColor: babyBlue,
      children: [
        ContentText(content: '⦁	عادات غذائية خاطئة مكتسبة منذ الطفولة'),
        ContentText(content: '⦁	سوء التغذية'),
        ContentText(content: '⦁	نقص الغذاء (في كثير من الأحيان بسبب الفقر)'),
        ContentText(content: '⦁	أسباب وراثية'),
        ContentText(
            content:
                '⦁	إتباع أنظمة غذائية خاصة لتخفيف الوزن والاستمرار بها إلى حد الوصول إلى النحافة ومن ثم عدم القدرة على استرجاع الوزن الطبيعيبعض الأمراض العضوية، مثل:'),
        ContentText(content: '⦁	فرط الغدة الدرقية'),
        ContentText(content: '⦁	فقر الدم'),
        ContentText(content: '⦁	أمراض سوء الامتصاص'),
        ContentText(content: '⦁	التمثيل الغذائي غير السليم للمغذيات'),
        ContentText(content: '⦁	نقص الفيتامينات، والمغذيات'),
        ContentText(
            content:
                '⦁	الإصابة ببعض الأورام أو كنتيج لعلاجهابعض الأمراض النفسية، مثل:'),
        ContentText(content: '⦁	الاكتئاب'),
        ContentText(content: '⦁	اضطراب الأكل'),
        ContentText(content: '⦁	فقدان الشهية العصابي')
      ]),
  vertical1SizedBox,
  CustomExpansion(
      title: 'حساب السعرات الحرارية اللازمة لكل فرد يومياً ',
      subTitleChildren: [],
      backGroundColor: babyBlue,
      children: [
        ContentText(
            content:
                'معدل الأيض للرجال: (10 × الوزن بالكيلو غرام) + (6.25 × الارتفاع بالسنتيمتر) - (5 × العمر) + 5'),
        ContentText(
            content:
                'معدل الأيض للنساء: (10 × الوزن بالكيلو غرام) + (6.25 × الارتفاع بالسنتيمتر) - (5 × العمر) - 161')
      ]),
  vertical1SizedBox,
  CustomExpansion(
      title: 'كيف يتم حساب مقدار السعرات الحرارية في الوجبة؟',
      subTitleChildren: [],
      backGroundColor: babyBlue,
      children: [
        SectionSubTitleText(
            title: 'في ما يأتي القيم الحرارية ثلاث مكونات رئيسة في الوجبات :'),
        ContentText(
            content:
                ' ⦁	الكربوهيدرات حيث تحتوي 1 غرام منها على 4 سعرات حرارية.'),
        ContentText(
            content: '⦁	البروتين حيث تحتوي 1 غرام منها على 4 سعرات حرارية.'),
        ContentText(content: '⦁	الدهون تحتوي 1 غرام منها على 9 سعرات حرارية.'),
        Divider(),
        SectionSubTitleText(
            title:
                'ارشادات لزيادة السعرات الحرارية في النظام الغذائي تساعد الخطوات التالية في زيادة كمية السعرات الحرارية'),
        ContentText(
            content:
                '⦁	تناول من 3 إلى 5 وجبات في اليوم حيث يساعد تناول 3 وجبات في اليوم على الأقل على زيادة كمية السعرات الحرارية المتناولة.'),
        ContentText(
            content:
                '⦁	تناول كمية مناسبة من البروتين حيث يساعد تناول ما يقارب 0.8 إلى2.0 غرام من البروتين لكل كيلوغرام من وزن الجسم على زيادة كتلة العضلات وزيادة الوزن بشكل صحي.'),
        ContentText(
            content:
                '⦁	تناول وجبات مليئة بالكربوهيدرات والدهون الصحية حيث يساعد إدخال الدهون الصحية والكربوهيدرات في كل وجبة على زيادة السعرات الحرارية والعناصر الغذائية.'),
        ContentText(
            content:
                '⦁	تناول العصائر عالية السعرات الحرارية، وتشمل هذه العصائر المكونات الآتية: زبدة الجوز، والفاكهة، والحليب، والزبادي، والمكسرات.'),
        ContentText(content: '⦁	ممارسة التمارين الرياضية المختصة بزيادة الوزن.')
      ]),
  vertical1SizedBox,
  CustomExpansion(
      title: 'النحافه ومرضي الضغط المرتفع',
      subTitleChildren: [],
      backGroundColor: babyBlue,
      children: [
        SectionSubTitleText(
            title: 'مرضي الضغط يجب تجنب هذه الأطعمة أثناء زياده الوزن'),
        ContentText(content: ' الأطعمة المالحة ...'),
        ContentText(content: 'الأطعمة السكرية ...'),
        ContentText(content: 'المخللات ...'),
        ContentText(content: 'الخبز ...'),
        ContentText(content: 'اللحوم الحمراء ...'),
        ContentText(content: 'المشروبات السكرية'),
        ContentText(content: 'البان منزوعه الدسم '),
        ContentText(content: 'الدهون المشبعة'),
        Divider(),
      ]),
  vertical1SizedBox,
  CustomExpansion(
      title: 'النحافة ومرض السكري',
      subTitleChildren: [],
      backGroundColor: babyBlue,
      children: [
        ContentText(
            content:
                'مرض السكري قد يؤدي إلى إنقاص وزن بعض المصابين بشكل  كبير، بينما لمصابين آخرين قد يُسبب زيادة الوزن.يحدث انخفاض الوزن الناجم عن مرض السكري بسبب انخفاض مستويات الأنسولين في الجسم بمعدل أقل من الطبيعي، لذلك ال تستطيع الخاليا تخزين الغلوكوز، مما يدفع الجسم لتكسير واستهلاك الدهون والعضلات للحصول على الطاقة، يتسبب في فقدان الوزن.'),
      ]),
  vertical1SizedBox,
  CustomExpansion(
      title: 'طرق زيادة الوزن لمرضى السكري',
      subTitleChildren: [],
      backGroundColor: babyBlue,
      children: [
        SectionSubTitleText(title: 'طرق زيادة الوزن لمرضى السكري'),
        ContentText(
            content: 'تمثلت أهم طرق زيادة الوزن لمرضى السكري في ما يأتي: '),
        ContentText(
            content:
                '1 تناول عدة وجبات صغيرة:نظ ًرا ألن الجسم غير قادر على تخزين ما يأكله المصاب بالسكري، فمن المهم تزويدالجسم بالسعرات الحرارية بانتظام عن طريق تناول عدة وجبات صغيرة في اليوم.'),
        ContentText(
            content:
                'من المهم أي ًضا اتخاذ خيارات غذائية صحية، وتجنب الأطعمة الدهنية والسكرية الزائدة، واختيار الأطعمة التي تحتوي على مؤشر نسبة السكر في الدم عالية. '),
        ContentText(content: '2 تناول المزيد من السعرات الحرارية '),
        ContentText(
            content:
                ' لزيادة الوزن لمرضى السكري، ينبغي مضاعفة استهلاك السعرات حرارية، فعلى الرغم من أن بعض الدراسات تشير إلى أن السعرات الحرارية بمقدار 500 سعرة حرارية كل يوم قد يزيد 4.0 كيلوغرام من وزن الجسم أسبوعيًا،فإن هذا ال ينطبق على الجميع، نظراً لاختلاف آلية الجسم في حرق السعرات الحرارية.'),
        ContentText(
            content:
                'يمكن الحصول على المزيد من السعرات الحرارية عند تناول الأطعمة الآتية:الافوكادو ,زيت الزيتون.3 .تناول الأطعمة الغنية بالبروتينات'),
        ContentText(
            content:
                'يوفر البروتين الطاقة على مدى فترة زمنية أطول، ويساعد أي ًضا على زيادة إنتاج الأنسولين، والحفاظ على مستويات السكر الصحية في الجسم، لذا يُعد خيار جيد لزيادة الوزن لمرضى السكري.'),
        ContentText(
            content: 'يمكن الحصول على البروتين من تناول الأطعمة الآتية:'),
        ContentText(content: 'اللحوم.'),
        ContentText(content: '• الأسماك.'),
        ContentText(content: '• الدجاج.'),
        ContentText(content: '• البقوليات.'),
        ContentText(content: '• البيض.'),
        ContentText(content: '• المكسرات.'),
        ContentText(content: '• منتجات الألبان كاملة الدسم.'),
        ContentText(content: '• مسحوق مصل اللبن، إذ يُعد مصدر جيد للبروتين.'),
        ContentText(content: '4.استشارة أخصائي التغذية '),
        ContentText(
            content:
                'يمكن أن يساهم أخصائي التغذية في وضع خطة صحية تهدف لزيادة الوزن لمرضى السكري، وذلك من خالل تقديم .وصفات لوجبات تركز على زيادة السعرات الحرارية، مع الأخذ بعين الاعتبار المتطلبات الغذائية لمرضى السكريكما يُنصح باستشارة أخصائي التغذية في الحالات الآتية:'),
        ContentText(content: '• التعرض لمحاولة فاشلة لزيادة الوزن.'),
        ContentText(content: '• الرغبة في البدء ضمن خطة صحية.')
      ]),
  vertical1SizedBox,
  CustomExpansion(
      title: 'نصائح هامة لزيادة الوزن لمرضى السكري ',
      subTitleChildren: [],
      backGroundColor: babyBlue,
      children: [
        SectionSubTitleText(title: ' نصائح هامة لزيادة الوزن لمرضى السكري '),
        ContentText(
            content:
                'في ما يأتي مجموعة من النصائح الهامة التي يجب اتباعها لزيادة الوزن لمرضى السكري: '),
        ContentText(
            content:
                '• يُنصح بشرب المشروبات الآتية في حال وجود صعوبة في تناول الأطعمة الصلبة:'),
        ContentText(content: 'o الحليب المخفوق. '),
        ContentText(content: 'o عصائر الفاكهة.'),
        ContentText(content: 'o القهوة مع الحليب. '),
        ContentText(
            content:
                '• يفضل زيادة تركيز الحليب في المشروبات، وذلك بإضافة الحليب المجفف. '),
        ContentText(
            content:
                '• يُنصح بإعداد شوربة كريمة باللحم و الخضروات والبقوليات، مثل: الفاصوليا أو البازلاء أو الحمص، كما يمكن إضافة '),
        ContentText(content: 'مسحوق الحليب إلى الحساء الكريمي.'),
        SectionSubTitleText(title: ' متى يجب زيارة الطبيب؟ '),
        ContentText(
            content:
                'بالرغم من القدرة على زيادة الوزن لمرضى السكري بمجهود شخصي إال أن بعض الحالات بحاجة إلى مراجعة الطبيب، وذلك '),
        ContentText(content: 'في حال ظهور واحدة أو أكثر من العلامات الآتية: '),
        ContentText(content: '1 .فقدان الوزن المستمر. '),
        ContentText(content: '2 .العطش الشديد. '),
        ContentText(
            content:
                '3 .كثرة التبول أكثر من المعتاد، والتبول أكثر من 8 مرات في اليوم. '),
        ContentText(content: '4 .الجوع المفرط. '),
        ContentText(content: '5 .الرؤية الضبابية. '),
        ContentText(content: '6 .الجروح والقروح بطيئة الشفاء. '),
        ContentText(content: '7 .التعب الشديد.')
      ]),
  vertical1SizedBox,
  CustomExpansion(
      title: ' النحافة ومرضى القلب',
      subTitleChildren: [
        ContentText(content: ' ارشادات الى من يعانون من احدى امراض القلب  ')
      ],
      backGroundColor: babyBlue,
      children: [
        SectionSubTitleText(
            title:
                'إن النحافة تتسبب في تعرض المصاب بها إلى أضرار صحية خطيرة على القلب ، وهي: '),
        ContentText(
            content:
                '1 تصلب الشرايين :يزيد احتمال تعرض المصابين بالنحافة إلى الإصابة بتصلب الشرايين بنسبة تزيد إلى الضعفين مقارنة بغير المصابين بها.'),
        ContentText(
            content:
                '2 بالجلطات القلبية :في هذه الجلطات القلبية تحدث جلطات القلب للمصابين بالنحافة بشكل كبير ، كما أكدت الدراسات أنالحالة تكون خطيرة نتيجة أن الشخص المصاب بالنحافة يعاني من الضعف العام والأنيميا الشديدة بالأساس ، ونسبة الهيموجلوبين في الدم منخفضة انخفاض ضغط الدم، ودائما ما يشعر بهبوط عام وإرهاق وإعياء ، وكل هذه الأشياء نتائج طبيعية انخفاض ضغط الدم بسبب النحافةوينصح العلماء في هذه الدراسة بضرورة علاج النحافة تجنب أضرارها الخطيرة على القلب ، كما يجب علاج فقر الدم في حالة الإصابة به إلى جانب النحافة أيضا.'),
        SectionSubTitleText(
            title: 'الذين يعانون من احدى امراض القلب يجب اتباع التالي:'),
        SectionSubTitleText(title: '1 _ الإكثار من الفواكه والخضروات.'),
        ContentText(content: 'الفاكهة والخضراوات التي ينبغي الاختيار منها'),
        ContentText(content: '• الخضراوات والفاكهة الطازجة أو المج ّمدة'),
        ContentText(content: '• الخضراوات المعبأة قليلة الصوديوم'),
        ContentText(content: '• الفاكهة المعلبة المحفوظة في العصير أو المياه'),
        ContentText(content: '• جوز الهند'),
        ContentText(content: '• الخضراوات التي تحتوي على صلصات دسمة'),
        ContentText(content: '• الخضروات المقلية أو المغطاة بالبقسماط'),
        ContentText(content: '• الفاكهة المعلبة المحفوظة في شراب غليظ القوام'),
        ContentText(content: '• الفاكهة المج َّمدة مع سكر مضاف'),
        SectionSubTitleText(title: '2 .اختيار الحبوب الكاملة'),
        ContentText(
            content:
                'تمثل الحبوب الكاملة مصادر جيدة للألياف والعناصر الغذائية األخرى التي تسهم في تنظيم ضغط الدم وصحة القلب. ويمكنك زيادة كمية منتجات الحبوب المنخولة. أو ُخض المغامرة وجِّّر الحبوب الكاملة في نظام غذائي صحي للقلب عن طريق بدائل بسيطة ب حبوبًا كاملة جديدة، مثل حبوب فارو الكاملة أو الكينوا أو الشعير.'),
        ContentText(
            content:
                'منتجات الحبوب التي يجب الحد منها أو منتجات الحبوب التي ينبغي اختيارهاتجنبها'),
        ContentText(content: '• دقيق القمح الكامل'),
        ContentText(
            content:
                '• خبز الحبوب الكاملة، ويفضل أن يكون ًعا من حبوب القمح الكاملة أو غيرها من الحبوب األخرى بنسبة 100%'),
        ContentText(
            content:
                '• حبوب الإفطار الغنية بالألياف بمقدار 5غرامات أو أكثر من الألياف في الحصة الغذائية'),
        ContentText(
            content:
                '• الحبوب الكاملة مثل الأرز البني والشعير والحنطة السوداء )كاشا('),
        ContentText(content: '• معكرونة الحبوب الكاملة'),
        ContentText(content: '• دقيق الشوفان )مجروش أو عادي('),
        ContentText(content: '• الدقيق الأبيض المنخول'),
        ContentText(content: '• الخبز الأبيض'),
        ContentText(content: '• المافن'),
        ContentText(content: '• الوافل المجمد'),
        ContentText(content: '• خبز الذرة'),
        ContentText(content: '• الكعك ال ُمحلى'),
        ContentText(content: '• البسكويت'),
        ContentText(content: '• الخبز السريع'),
        ContentText(content: '• الكيك'),
        ContentText(content: '• الفطائر'),
        ContentText(content: '• شعيرية البيض'),
        ContentText(content: '• الفشار بالزبدة'),
        ContentText(content: '• رقائق الوجبات الخفيفة عالية الدهون'),
        SectionSubTitleText(title: '3 .عليك الحد من الدهون غير الصحية'),
        ContentText(
            content:
                'يشكل تقليل مقدار الدهون المشبعة والدهون المتحولة التي تتناولها خطوة مهمة نحو تقليل مستوى الكوليسترول في الدم وتقليل فرص الإصابة بمرض الشرايين التاجية. فقد يؤدي ارتفاع مستوى الكوليسترول في الدم إلى تراكم اللويحات في الشرايين، وهو المرض المسمى بتصلب الشرايين، الذي يمكن أن يزيد من خطر الإصابة بالنوبات القلبية والسكتات الدماغية.'),
        ContentText(
            content:
                'تقدم جمعية القلب الأمريكية هذه الإرشادات بشأن مقدار الدهون التي ينبغي أن يشملها النظام الغذائي المفيد لصحة القلب:نوع الدهون التوصية الدهون المشبعة أقل من 6 في المائة من إجمالي السعرات الحرارية اليومية. * بحيث تتراوح بين 11 و 13 غرام  تقريبًا في حال تناول 2000 سعر حراري يوميًا.'),
        ContentText(content: 'الدهون المتحولة. تجنبها'),
        ContentText(
            content:
                '*ملحوظة: توصي المبادئ التوجيهية للنظم الغذائية للأميركيين إصدار 2020-2025 بالحد من الدهون المتحولة إلى أقل من 10 في المائة من إجمالي السعرات الحرارية في اليوم.'),
        SectionSubTitleText(
            title:
                'توجد طرق بسيطة لتقليل الدهون المشبعة والدهون المتحولة، ومنها:'),
        ContentText(
            content:
                '• إزالة الدهون من اللحم أو اختيار اللحوم منخفضة الدهون التي تقل نسبة الدهون فيها عن 10.%'),
        ContentText(
            content:
                '• استخدام كمية أقل من الزبد والمرجرين والسمن عند الطهو أو تقديم الطعام. ّن البطاطا المخبوزة بمعجون'),
        ContentText(
            content:
                '• استخدام بدائل منخفضة الدسم حيثما أمكن لجعل النظام الغذائي مفيدًا لصحة القلب. على سبيل المثال، زيّ طماطم منخفض الصوديوم أو لبن منخفض الدسم بدالً من الزبد، أو استخدم شرائح الفاكهة الكاملة أو زيّن شرائح الخبز معجون الفواكه منخفض السكر بدالً من المرغرين.'),
        ContentText(
            content:
                '• استخدام بدائل منخفضة الدسم حيثما أمكن لجعل النظام الغذائي مفيدًا لصحة القلب. على سبيل المثال، زيّطماطم منخفض الصوديوم أو لبن منخفض الدسم بدالً من الزبد، أو استخدم شرائح الفاكهة الكاملة أو زيّن شرائح الخبز معجون الفواكه منخفض السكر بدالً من المرغرين.'),
        ContentText(
            content:
                'راجع كذلك ملصقات القيم الغذائية الموجودة على البسكويت والكعك والحلوى الكريمية والمقرمشات ورقائق البطاطا. فإلى جانب كونها أطعمة منخفضة القيمة الغذائية، فإن بعضها قد يحتوي أي ًضا على دهون متحولة، حتى وإن كان مكتوبًا على ملصقاتها أنها منخفضة الدهون.'),
        ContentText(
            content:
                'وعلى الرغم من أنه لم يَعُد مسموح ًحا بإضافة الدهون المتحولة إلى الأطعمة، فإن المنتجات القديمة قد ال تزال تحتوي عليها. كما قد يُشار إلى الدهون المتحولة على ملصقات المكونات تحت مسمى الزيوت المهدرجة جزئًيا.'),
        SectionSubTitleText(
            title: 'الدهون التي ينبغي اختيارها الدهون التي يجب الحد منها'),
        ContentText(content: '• زيت الزيتون'),
        ContentText(content: '• زيت الكانوال'),
        ContentText(content: '• الزيوت النباتية وزيوت المكسرات'),
        ContentText(content: '• المرغرين الخالي من الدهون المتحولة'),
        ContentText(
            content:
                '• المرغرين الذي يعمل على خفض نسبة الكوليسترول، مثل Benecol ،أو Smart أو Promise Activ Balance'),
        ContentText(content: '• المكسرات والبذور'),
        ContentText(content: '• الأفوكادو'),
        ContentText(content: '• الزبد'),
        ContentText(content: '• شحم الخنزير'),
        ContentText(content: '• دهون لحم الخنزير المقدد'),
        ContentText(content: '• المرق'),
        ContentText(content: '• صلصة الكريمة'),
        ContentText(content: '• الكريمة غير اللَبنية'),
        ContentText(content: '• المرغرين المهدرج وسمن الطبخ'),
        ContentText(content: '• زبدة الكاكاو الموجودة في الشوكولاتة'),
        ContentText(content: '• زيوت جوز الهند والنخيل وبذر القطن بذور النخيل'),
        ContentText(
            content:
                'عند استخدام الدهون، اختر الدهون الأحادية غير المشبعة، مثل زيت الزيتون أو زيت الكانوال. كما تُعد أي ًضا الدهون المتعددة غير المشبعة، الموجودة في بعض أنواع الأسماك والأفوكادو والمكسرات والبذور خيا ًرا جيدًا لنظام غذائي مفيد لصحة القلب.'),
        ContentText(
            content:
                ' عند استخدام الدهون الأحادية غير المشبعة والدهون المتعددة غير المشبعة بديالً الكوليسترول في الدم. ولكن للدهون المشبعة، فقد يساعد ذلك على تقليل النسبة الإجمالية الاعتدال أمر ضروري. تحتوي الدهون بجميع أنواعها على سعرات حرارية عالية.'),
        ContentText(
            content:
                'هناك طريقة سهلة لإضافة الدهون الصحية )واأللياف( لنظامك الغذائي وهي استخدام بذور الكتان. وبذور الكتان هي بذور بنية صغيرة تحتوي على نسبة عالية من الألياف وأحماض أوميغا 3 الدهنية. وقد توصلت الدراسات إلى أن بذور الكتان تعمل على تقليل مستويات الكوليسترول غير الصحية لدى البعض. '),
        ContentText(
            content:
                'يُمكنك طحن بذور الكتان في مطحنة القهوة أو خالط الطعام، ثم خلط ملعقة منها في اللبن أو صلصةالتفاح أو حبوب الإفطار الساخنة.'),
        SectionSubTitleText(title: '5 .اختر مصادر البروتين قليلة الدسم')
      ]),
  vertical1SizedBox,
  CustomExpansion(
    title: 'الطرق الصحية لزيادة الوزن ',
    subTitleChildren: [],
    backGroundColor: babyBlue,
    children: [
      SectionSubTitleText(
          title:
              ' 1 )اختر الأطعمة الغنية بالعناصر الغذائية والسعرات الحرارية: '),
      ContentText(
          content:
              'البروتين: وهي وحدة البناء الأساسية للعضلات مثل اللحوم الحمراء، السمك، السلمون، البيض، منتجات الجبن والألبان كاملة الدسم، البقوليات، المكسرات، وفى حالة عدم القدرة على تناول كميات كافية من هذه البروتينات يمكن اللجوء إلى المكملات الغذائية'),
      ContentText(
          content:
              'الدهون الصحية غير المشبعة: مثل الأفوكادو، المكسرات، الزيتون، الزبدة، المايونيزالكربوهيدرات: مثل البطاطا، الأرز البنى، الحبوب الكاملة، الخبز ومكرونة الحبوب الكاملة، الخضراوات والفواكه وتجنب الإكثار من السكر'),
      SectionSubTitleText(
          title: '2 )ج ّرب العصائر السموذي والمشروبات المخفوقة: '),
      ContentText(
          content:
              'لا تملأ معدتك بالمشروبات الغازية المحلاة ببدائل السكر والقهوة والمشروبات الأخرى التي تحتوي على سعرات حرارية قليلة وقيمة غذائية منخفضة. ولكن بدالً من ذلك، تناول العصائر السموذي أو المشروبات المخفوقة المصنوعة من الحليب والفواكه الطازجة أو المجمدة، وانثر عليها بعض بذور الكتان المطحونة. '),
      SectionSubTitleText(title: '3 )انتبه للوقت الذي تتناول فيه المشروبات:'),
      ContentText(
          content:
              'يجد بعض الأشخاص أن تناول السوائل قبل الوجبات يقلل من شهيتهم. وفي هذه الحالة، قد يكون من الأفضل تناول مشروبات غنية بالسعرات الحرارية مع الوجبة أو الوجبة الخفيفة. بينما يجد آخرون أن الشرب بعد مرور 30 دقيقة من تناول الوجبة، وليس أثنائها، ناجحا.'),
      SectionSubTitleText(title: '4 )زيادة عدد مرات تناول الطعام:'),
      ContentText(
          content:
              'يمكن أن يُساعد تناول 5 إلى 6 وجبات صغيرة يوميّاً عوضا عن 3 وجبات كبيرة على تناول سعرات أكثر  لتناول الطعام.'),
      ContentText(
          content:
              'وبالتالي زيادة الوزن، وهذا قد يُساعد الأشخاص الذين يشبعون بسرعة أو ال يمتلكون شهيّةً'),
      SectionSubTitleText(title: '3 )انتبه للوقت الذي تتناول فيه المشروبات:'),
      ContentText(
          content:
              'يجد بعض الأشخاص أن تناول السوائل قبل الوجبات يقلل من شهيتهم. وفي هذه الحالة، قد يكون من الأفضل تناول مشروبات غنية بالسعرات الحرارية مع الوجبة أو الوجبة الخفيفة. بينما يجد آخرون أن الشرب بعد مرور 30 دقيقة من تناول الوجبة، وليس أثنائها، ناجحا.'),
      SectionSubTitleText(title: '5 )اختيار الوجبات الخفيفة الغنيّة بالسعرات:'),
      ContentText(
          content:
              'بهدف زيادة المدخول اليومي من السعرات الحرارية إلى الجسم يمكن تناول وجبة خفيفة غنية بالسعرات ساعات تقريباً الحراريّة؛ تحتوي على البروتينات، والدهون، والكربوهيدرات، بعد ساعتين إلى 3 من آخروجبة، ومن الأمثلة على هذه الوجبات؛ اللبن كامل الدسم مع الجرانولا والموز، والعنب مع المكسرات، أو الفول السودانى مع البسكوت، أو شريحة من الجبن، أو خبز التوست بالقمح الكامل مع ربع كوب من الح ّمص وزيت الزيتون، كما يمكنك تناول وجبة خفيفة قبل النوم، مثل شطيرة زبدة الفستق أو شطيرة الخبز الملفوف مع األفوكادو والخضروات ال ُمقطَّ أو الفواكه المجففة '),
      SectionSubTitleText(title: '6 )تنويع الأطعمة:'),
      ContentText(
          content:
              'عند تناول الطعام يُف َّضل تناول 3 أنواع مختلفة من األطعمة على األقل في كل وجبة؛ ففي الوجبة الرئيسية  على سبيل المثال يمكن تناول البروتينات، والنشويّات، والخضار أو الفواكه، وهذا التنّوع يجب أن يُطبَّق أيضاً على الوجبات الخفيفة لضمان الحصول على مختَلَف العناصر الغذائية التي يحتاجها الجسم لبناء العضلات'),
      SectionSubTitleText(title: '7 )على ممارسة الرياضة:'),
      ContentText(
          content:
              'تمارين القوة مثل رفع الأثقال واليوغا، من الممكن أن تساعدك ممارسة التمارين الرياضية، خاصةًاكتساب الوزن عن طريق بناء العضلات. كما يمكن أن تساعد ممارسة التمارين أي ًضا في تحفيز شهيتك. ومن جهٍة أخرى يجب على الأشخاص الذين يُعانون من النحافة نتيجة الاضطرابات الأكل عدم ممارسة الرياضة الا في حال أوصاهم الطبيب بذلك '),
      SectionSubTitleText(title: '8 )تغيير نمط الحياة: '),
      ContentText(
          content:
              ' • الاستعداد لتناول الطعام حتى في حالة عدم الجوع، مضغ الطعام جيدًا وبدون عجلة'),
      ContentText(content: '• استخدام منبّه للتذكير بتناول الطعام كل ساعتين. '),
      ContentText(
          content:
              '• تناول حصص صغيرة من البروتينات قبل ممارسة تمارين القوة وبعدها للمساعدة على دعم نمو العضلات. '),
      ContentText(
          content:
              '• أخذ قسط كاف من النوم؛ ليوفّر للجسم الوقت اعادة بناء العضلات بطريقة صحيّة بدالً من تحويل الطعام إلى دهون.'),
      ContentText(
          content:
              '• تقليل مسببات التوتر، وذلك عن طريق تخصيص وقت أكبر لممارسة الهوايات، والتأمل، أو الحصول على جلسة تدليك مريحة. '),
      ContentText(
          content:
              '• التخلص من العادات السيئة أو تقليل ممارستها ومنها التدخين'),
      ContentText(
          content:
              '• الجلسة بطريقةٍ مريحة أثناء تناول الطعام، وتجنب المشتتات أثناء الأكل؛ الهاتف والتلفاز للتركيز على الاكل. ')
    ],
  ),
  vertical1SizedBox,
  CustomExpansion(
      title: 'نقاط إضافية لزيادة الوزن بطريقة صحية للأطفال ',
      subTitleChildren: [],
      backGroundColor: babyBlue,
      children: [
        SectionSubTitleText(
            title:
                'أنّه يمكن للطفل الذي يعاني من نقص الوزن أن يتناول الأغذية ذات السعرات الحرارية'),
        ContentText(
            content:
                '１ .قد يظّن البعض خطئاً العالية وغير الصحية، مثل: الحلويات، والكعك، والشوكوالتة، واألطعمة والمشروبات السكرية والدهنيّة، ولكن ذلك أمٌر غير صحيٍ على الإطلاق، فمن المهم أن يكتسب الطفل ُالوزن بطريقه صحيّة؛ عن طريق اتّباع نظاٍم غذائ متوازن '),
        ContentText(
            content:
                '２ .تحضير األطعمة المحببة للطفل والغنية بالعناصر الغذائية '),
        ContentText(content: '３ .تناول الطعام مباشرةً عند الجوع'),
        ContentText(
            content:
                '４ .عدم تناول السوائل مع األكل وينصح شرب السوائل بين الوجبات للمحافظة على رطوبة الجسم'),
        ContentText(
            content:
                '５ .تغيير المنطقة التي يأكل فيها الطفل يساعد على تناول المزيد من الطعام '),
        ContentText(
            content:
                '６ .يُنصح بتثبيت وقت الطعام دائماً بغض النظر عن الشخص الذي يُطعم الطفل. '),
        ContentText(
            content:
                '７ .يجب أن يكون وقت تناول الطعام مريحاً واجتماعياً، حيث يشجع الطفل على األكل مع أفراد األسرة، والمحادثة الممتعة، إذ إ َّن السماح للطفل بتناول الطعام مع اآلاخرين يسمح له بمراقبة كيفية اختيار اآلخرين للطعام، ويشجعه على عادات الأكل الصحية . '),
        ContentText(
            content:
                '８ .يجب أن يكون وقت الوجبة خال من المشاجرات على الاكل، حيث يجب على الوالدين تشجيع الطفل على تناول الطعام دون إجبار، ولا ينبغي منع الطفل عن الطعام كوسيلة للعقاب، كما لا ينبغي تقديم الطعام له كمكافأة. '),
        ContentText(
            content:
                '９ .يجب الثناء على الطفل عندما يأكل جيداً، وعدم معاقبته عندما لا يأكل.'),
        ContentText(
            content:
                '１０ .يُنصح بتخفيف المشتتات أثناء الوجبات، كإغلاق التلفاز، والادوات الاكترونية، الامر الذي يساعد الطفل على التركيز على تناول الطعام، كما أ َّن الكثير من العائلات على التلفاز قد تشّجع الطفل على تناول الاطعمة السكرية، والأطعمة ذات القيمة الغذائية المنخفضة.'),
        ContentText(
            content:
                '１１ .يجب على الوالدين اتباع النظام الغذائي الصحي حتى يكونوا قدوة حسنة للطفل ')
      ]),
  vertical1SizedBox,
  CustomExpansion(
      title: 'نصائح إضافية لزيادة الوزن بطريقة صحية لكبار السن ',
      subTitleChildren: [],
      backGroundColor: babyBlue,
      children: [
        SectionSubTitleText(
            title: 'نصائح إضافية لزيادة الوزن بطريقة صحية لكبار السن '),
        ContentText(
            content:
                '１ .تناول الطعام مع العائلة واألصدقاء لزيادة الشهية لدى الفرد'),
        ContentText(
            content:
                '２ .احتفظ ببعض الفواكه والخضراوات المجففة والمعلبة فى المنزل فهى سهلة التحضير'),
        ContentText(
            content:
                '３ .تُعُّد العصائر المصنوعة من الزبادي والفواكه خيا ًرا جذابًا لألشخاص الذين يفقدون شهيتهم أو يعانون من مشكلة في المضغ أو يعانون من جفاف الفم'),
        ContentText(
            content:
                '４ .إذا كنت تجد صعوبة لتطهو لنفسك أو لشراء الطعام ففكر بطلب مساعدة خارجيالخضراوات الهامة لكبار السن: السبانخ، القرع، المشروم الذي يحتوي على البوتاسيوم، الثوم والبصل اللذان  يحاربان البكتيريا والعدوى بجسم الإنسان يحافظان على صحة القلب '),
        ContentText(
            content:
                '5 .الفواكه الهامة لكبار السن: الموز فهو سهل المضغ وغنى بالبوتاسيوم، التوت غنى بمضادات األكسدة ويمد الجسم  بالكالسيوم والبوتاسيوم والماغنيسيوم، التفاح مفيد للجلد يحتوي على البكتين الذى يمنع تراكم الكوليسترول فى  الأوعية الدموية، الزبيب غنى بالحديد ويمنع تراكم البكتيريا بالفم والتي تتسبب فى حدوث تسوس في الأسنان')
      ]),
];

List<Widget> perfectWeight = [
  Header(subTitles: [
    SubTitleText(content: "الوزن المثالي"),
  ]),
  vertical1SizedBox,
  CustomExpansion(
      title: 'حساب الوزن المثالي',
      subTitleChildren: [
        ContentText(content: 'معادلة الوزن المثالي للرجال'),
        ContentText(content: 'معادلة الوزن المثالي للنساء'),
      ],
      backGroundColor: babyBlue,
      children: [
        ContentText(content: 'معادلة الوزن المثالي للرجال:'),
        ContentText(
            content:
                ' الوزن المثالي بالكيلوغرام = 48 + 1.1 × (الطول بالسنتيمتر − 150 سنتيمتراً) '),
        ContentText(content: 'معادلة الوزن المثالي للنساء:'),
        ContentText(
            content:
                ' الوزن المثالي بالكيلوغرام = 45 + 0.9 × (الطول بالسنتيمتر − 150 سنتيمتراً)'),
        ContentText(
            content:
                '(بالكيلوغرام)اقل من ١٢ شهرا :-الوزن =(العمر بالاشهر +٩)÷٢'),
        ContentText(
            content: 'من ١-٥ سنوات =٢×(العمر بالسنوات +٥)=؟؟(بالكيلوغرام )'),
        ContentText(
            content: 'من ٥ : ١٤ سنوات ٤×(العمر بالسنوات )=   (بالكيلوغرام)')
      ]),
  vertical1SizedBox,
  CustomExpansion(
      title: 'لمعرفة درجة النحافة او السمنة',
      subTitleChildren: [],
      backGroundColor: babyBlue,
      children: [
        ContentText(
            content:
                'مؤشر كتلة الجسم BMI = الوزن بالكيلوغرام ÷ ( الطول بالمتر × الطول بالمتر )'),
        DataTable(columns: [
          DataColumn(
            label: ContentText(
              content: 'المؤشر BMI',
            ),
          ),
          DataColumn(
              label: ContentText(
            content: 'حالة الجسم',
          ))
        ], rows: [
          tableRow(weight: 'أقل من 15', result: 'نقص حاد جداً في الوزن'),
          tableRow(weight: 'من 15 إلى 16', result: 'نقص حاد في الوزن'),
          tableRow(weight: 'من 16 إلى 18.5', result: 'نقص في الوزن'),
          tableRow(weight: 'من 18.5 إلى 25', result: 'وزن طبيعي'),
          tableRow(weight: 'من 25 إلى 30', result: 'زيادة في الوزن'),
          tableRow(weight: 'من 30 الى 35', result: 'سمنة درجة أولى'),
          tableRow(weight: 'من 35 إلى 40', result: ' سمنة درجة ثانية'),
          tableRow(weight: 'أكثر من 40', result: 'سمنة مفرطة جداً')
        ])
      ]),
  vertical1SizedBox,
  CustomExpansion(
      title: 'عادات تساعدك على الوصول إلى الوزن المثالي',
      subTitleChildren: [
        ContentText(content: 'مراقبة الوجبات يوميًّا '),
        ContentText(
            content: 'لا بأس ببعض الدهون الصحية في النظام الغذائي الخاص بك'),
        ContentText(content: 'ممارسات يجب منعها للحفاظ على الوزن المثالي ')
      ],
      backGroundColor: babyBlue,
      children: [
        ContentText(content: 'مراقبة الوجبات يوميًّا '),
        ContentText(
            content:
                'بهدف ضبط كمية ونوع الطعام الذي يتم تناوله لتكون مناسبة لاحتياجات الجسم، وذلك من خلال استخدام أطباق أصغر لتقليل حجم الوجبة مع الإكثار من الخضروات والفاكهة والحبوب الكاملة والحد من الأطعمة ذات السعرات الحرارية المرتفعة'),
        Divider(),
        ContentText(
            content:
                'استبدال السناكس المقلية غير المفيدة بأخرى صحية ولذيذة، مثل شرائح الفلفل الملون والجزر والخيار والطماطم، أو ثمار الفاكهة، أو الزبادي قليل الدسم'),
        Divider(),
        ContentText(content: 'ممارسة أي نشاط بدني يوميًّا لمدة 30 دقيقة'),
        ContentText(
            content:
                ' مثل المشي أو الرقص أو قفز الحبل، لمساعدة الجسم على زيادة معدل حرق السعرات الحرارية وتحسين اللياقة البدنية'),
        Divider(),
        ContentText(content: 'تناول المزيد من الخضراوات'),
        ContentText(
            content:
                'وقد ربطت عدة دراسات علمية الوجبات الغذائية الغنية بالخضار بتحقيق نتائج صحية أفضل، بما في ذلك فقدان الوزن وانخفاض خطر الأمراض المزمنة. بعض الخضراوات، مثل الجرجير والسبانخ والثوم المعمر والكرنب، تحتل مرتبة عالية في قائمة "مركز السيطرة على الأمراض والوقاية منها" وفي قائمة "الأطعمة القوية". لذلك، حاول إيجاد الأنواع المفضلة لديك وأضفها إلى قائمت'),
        Divider(),
        ContentText(
            content:
                ' استبدال الصودا أو الشاي الحلو بالماء أو الشاي غير المحلى أو غيرها من المشروبات الخالية من السكر'),
        ContentText(
            content:
                ' فقد تحتوي المشروبات المحلاة مثل الصودا والعصير كمية كبيرة من السعرات الحرارية مماثلة للكمية، التي تستهلكها في وجباتك اليومية، ومع ذلك فهي لا تشعرك بالامتلاء والشبع بنفس الطريقة التي توفرها الأطعمة الصلبة. وأظهرت التجارب أن تناول المشروبات السكرية يؤدي إلى زيادة الوزن بالإضافة إلى زيادة خطر الإصابة بالسكري من النوع 2.'),
        Divider(),
        ContentText(content: ' لا تهمل البروتين: '),
        ContentText(
            content:
                '  هو أحد المكونات الرئيسية التي تساعد على تغذية عضلاتنا وشعورنا بالشبع. كما أنه بمثابة عازل ضد الانخفاضات الحادة والتموج في مستويات الأنسولين. لذلك يجب التأكد من حصولك على كمية كافية من البروتين في كل وجبة. تتواجد في اللحوم، و مواد مثل البيض، والفاصولياء، والتوفو، والعدس، والأسماك، ومنتجات الألبان.'),
        Divider(),
        ContentText(content: 'وازن ما تأكله من خلال الحركة'),
        ContentText(
            content:
                'الحركة المنتظمة عنصر أساسي في نمط الحياة الصحي- ومن المهم بشكل خاص إذا كان هدفك خسارة الوزن أو الحفاظ عليه. فاجعل الرياضة الصباحية روتيناً يومياً، وإن لم تستطع حاول تغيير بعض العادات، فإذا كنت تقود سيارتك للعمل، حاول المشي أو ركوب الدراجة. إذا كنت معتاداً على ركوب المصعد، فاتخذ السلالم للصعود في المرة القادمة'),
        ContentText(content: 'تقليل الكربوهيدرات'),
        ContentText(
            content:
                'استبدال الخبز الأبيض، والأرز، والمعكرونة في وجبات الطعام الخاصة بك بالحبوب الكاملة. لأن السيطرة على نسبة السكر في الدم أمر ضروري للحفاظ على الصحة والوقاية من المرض'),
        ContentText(
            content:
                'احذر من المواد التي يطلق عليها  "قليل الدسم"، "خفيف"، و"دهون مخفضة": '),
        ContentText(
            content:
                'إذ أن معظم هذه الأطعمة أو المشروبات تعالج بإضافة نسبة عالية من السكر للحصول على المذاق الأصلي.'),
        ContentText(
            content: 'لا بأس ببعض الدهون الصحية في النظام الغذائي الخاص بك'),
        ContentText(
            content:
                'من مصادر مثل المكسرات وزيت الزيتون والأفوكادو والأسماك. فتناول مقدار فنجان من المكسرات يوميًّا، حيث إنها تحتوي على الدهون غير المشبعة، وتساعد على خفض الكوليسترول، وتقليل الإحساس بالجوع. الاهتمام بمضغ الطعام جيدًا وببطء، لأن هذه الطريقة تُحسن عملية الهضم وترفع معدلات الحرق، كما أنها تعزز الشعور بالشبع.'),
        Divider(),
        ContentText(content: '- تناول وجبات صغيرة.'),
        ContentText(
            content:
                ' إذا لم تنجح الحميات التقليدية بتحقيق هدفك، فكر في الصوم المتقطع.'),
        ContentText(
            content:
                'الحرص علي تناول الأسماك وعدم الإكثار من تناول اللحوم الحمراء، واختيار اللحوم التى تحتوى على نسبة دهون منخفضة مع طهيها  بطريقة صحية سواء كان السلق أو الشوي. تناول مقدار فنجان من المكسرات يوميًّا، حيث إنها تحتوي على الدهون غير المشبعة، وتساعد على خفض الكوليسترول، وتقليل الإحساس بالجوع. الاهتمام بمضغ الطعام جيدًا وببطء، لأن هذه الطريقة تُحسن عملية الهضم وترفع معدلات الحرق، كما أنها تعزز الشعور بالشبع. '),
        ContentText(
            content:
                'المواظبة على النوم جيدًا ليلًا، والإكثار من شرب الماء على مدار اليوم لا سيما قبل تناول الوجبات بـ30 دقيقة، فهما من العادات التي تمنع زيادة الوزن. الحد من تناول الوجبات السريعة، وفي حال اللجوء إليها يمكن اختيار البدائل الصحية المتوافرة، مثل شرب المياه أو العصائر الطازجة بدلًا من المشروبات الغازية، واختيار الوجبات المشوية بدلًا من المقلي'),
        Divider(),
        ContentText(content: 'ممارسات يجب منعها للحفاظ على الوزن المثالي '),
        ContentText(
            content:
                'مشاهدة التليفزيون أو ممارسة أي أنشطة في أثناء تناول الطعام تساعد على تناول المزيد من الطعام، وقد أثبت العديد من الدراسات وجود علاقة بين مشاهدة التليفزيون عند الأكل وارتفاع معدلات الإصابة بالسمنة'),
        ContentText(
            content:
                ' إعداد كميات كبيرة من الطعام يوميًّا، لأن ذلك يشجعنا على تناول معدلات تزيد على احتياجاتنا. '),
        ContentText(
            content:
                'تناول الوجبات ذات السعرات الحرارية المرتفعة في المساء، لأن الجسم لا يحتاج ليلًا إلى نسب مرتفعة من الطاقة كتلك التي يحتاجها ويستهلكها في النهار، لهذا يمكن الاكتفاء بتناول وجبات خفيفة قبل الخلود إلى النوم.')
        //  ...gehazHadmy
      ]),
];

List<Widget> gehazHadmy = [
  Header(subTitles: [
    SubTitleText(content: "اضطرابات الجهاز الهضمي "),
    SubTitleText(content: "وعلاقته بالتغذية")
  ]),
  vertical1SizedBox,

  //قرحة المعدة
  CustomExpansion(
    title: "قرحة المعدة",
    backGroundColor: babyBlue,
    subTitleChildren: [
      SubTitleText(content: "الطعام الممنوع لمرضى قرحة المعدة"),
      SubTitleText(content: "الاطعمة المفيدة في الراحه المعده")
    ],
    children: [
      ContentText(content: "الطعام الممنوع لمرضى قرحة المعدة"),
      ContentText(
          content:
              "الأطعمة الحارة: ٌُنصح بتجنب الأطعمة الحارة، مثل: الفلفل الحار، والفجل الحار، والصلصات والتوابل التي تحتوي علٌها. الأطعمة المالحة: تعزز الأطعمة المالحة من نمو الجرثومة الملوٌة البوابٌة التي تسبب القرحة، مثل: المخلالت، والزٌتون. والأطعمة المصنعه والكافٌٌن والمشروبات الغازٌه والشوكوالته : تزٌد الشوكولاتة  من إنتاج حمض المعدة، مما ٌزٌد أعراض القرحة سو ًءا"),
      ContentText(content: ":الأطعمة المفيدة ف قرحة المعده"),
      ContentText(
          content:
              "الأطعمة الغنية بالألياف تقلل الألياف من كمية الأحماض في المعدة وتخفف الألم - .والأنتفاخ"),
      ContentText(content: " - (Probiotics) الأطعمة الغنية بالبروبٌوتٌن"),
      ContentText(content: "- الأطعمة الغنية بفٌتامٌن ج"),
      ContentText(content: "- الأطعمة المحتوية على الزنن"),
      ContentText(
        content: "- الأطعمة الغنية بالسٌلٌنٌوم",
      ),
      ContentText(content: "- البطاطا الحلوة"),
      ContentText(content: "والزبادي والعسل"),
      ContentText(content: "تجنب اكل الدهون وشرب الكثٌر من الماء والسوائل"),
      ContentText(
          content:
              "الخضار والفواكه في نظامن الغذائً مثل الجزر والمرنبٌط واللفت والمرنبٌط والفلفل األحمر و األخضر والكرنب والتفاح والعنب وفاكهة الكٌوي ، ألن هذه الفاكهة غنٌة بالبٌتاو كاروتٌن وفٌتامٌن سً سٌساعد ذلن على حماٌة بطانة المعدة واألمعاء")
    ],
  ), //قرحة المعدة
  vertical1SizedBox,
  //الاثنى عشر
  CustomExpansion(
    title: "لرحه اإلثنً عشر-.",
    backGroundColor: babyBlue.withOpacity(.8),
    subTitleChildren: [
      SubTitleText(content: "التغذٌه المفٌده لمرحه اإلثنً عشر"),
    ],
    children: [
      ContentText(
          content:
              "تناول ثالثة وجبات للٌلة الحجم ومتنوعة ومكتملة العناصر الغذائٌة كل ٌوم، بٌنهما ولت ن البروتٌن وفٌتامٌن )ج( وتناول الجزر البطاطس والبطاطا"),
      ContentText(
          content:
              "تجنب تناول الوجبات الغذائٌة التى تعمل على االحتكان بالجزء المصاب مثل األطعمة .المحتوٌة على لشور وبذور وألٌاف"),
      ContentText(
          content:
              ".االبتعاد عن إضافة الشطة الحارة والبهارات إلى أطباق الطعام"),
      ContentText(content: "بعض الطعام ٌسبب لرحه اإلثنً عشر والمرئ"),
      ContentText(content: "الطعام الدسم والدهون"),
      ContentText(content: "االطعمه المالحه"),
      ContentText(content: "- الأطعمة المحتوية على الزنن"),
      ContentText(
        content: "الكحول والكافٌٌن",
      ),
      ContentText(content: "التدخٌن"),
      ContentText(content: "التوابل والشطه"),
    ],
  ),
  vertical1SizedBox,
  //االرتجاع المعدي المرٌئً-

  CustomExpansion(
    title: "االرتجاع المعدي المرٌئً-",
    backGroundColor: babyBlue.withOpacity(.8),
    subTitleChildren: [
      SubTitleText(content: "االكل الممنوع لمرضى ارتجاع المرئ"),
      SubTitleText(content: "النظام الغذائً واالطعمه االفضل ف ارتجاع المرئ")
    ],
    children: [
      ContentText(
          content:
              "تناول ثالثة وجبات للٌلة الحجم ومتنوعة ومكتملة العناصر الغذائٌة كل ٌوم، بٌنهما ولت ن البروتٌن وفٌتامٌن )ج( وتناول الجزر البطاطس والبطاطا"),
      ContentText(
          content:
              "تجنب تناول الوجبات الغذائٌة التى تعمل على االحتكان بالجزء المصاب مثل األطعمة .المحتوٌة على لشور وبذور وألٌاف"),
      ContentText(
          content:
              ".االبتعاد عن إضافة الشطة الحارة والبهارات إلى أطباق الطعام"),
      ContentText(content: "بعض الطعام ٌسبب لرحه اإلثنً عشر والمرئ"),
      ContentText(content: "الطعام الدسم والدهون"),
      ContentText(content: "االطعمه المالحه"),
      ContentText(content: "- الأطعمة المحتوية على الزنن"),
      ContentText(
        content: "الكحول والكافٌٌن",
      ),
      ContentText(content: "التدخٌن"),
      ContentText(content: "التوابل والشطه"),
    ],
  ),
  vertical1SizedBox,
  //االسهال

  CustomExpansion(
    title: "االسهال",
    backGroundColor: babyBlue.withOpacity(.8),
    subTitleChildren: [
      SubTitleText(content: "أطعمة تسبب اإلسهال عند اإلكثار منها"),
    ],
    children: [
      ContentText(
          content:
              "تناول ثالثة وجبات للٌلة الحجم ومتنوعة ومكتملة العناصر الغذائٌة كل ٌوم، بٌنهما ولت ن البروتٌن وفٌتامٌن )ج( وتناول الجزر البطاطس والبطاطا"),
      ContentText(
          content:
              "تجنب تناول الوجبات الغذائٌة التى تعمل على االحتكان بالجزء المصاب مثل األطعمة .المحتوٌة على لشور وبذور وألٌاف"),
      ContentText(
          content:
              ".االبتعاد عن إضافة الشطة الحارة والبهارات إلى أطباق الطعام"),
      ContentText(content: "بعض الطعام ٌسبب لرحه اإلثنً عشر والمرئ"),
      ContentText(content: "الطعام الدسم والدهون"),
      ContentText(content: "االطعمه المالحه"),
      ContentText(content: "- الأطعمة المحتوية على الزنن"),
      ContentText(
        content: "الكحول والكافٌٌن",
      ),
      ContentText(content: "التدخٌن"),
      ContentText(content: "التوابل والشطه"),
    ],
  ),
  vertical1SizedBox,
];

class Header extends StatelessWidget {
  List<Widget> subTitles;
  Header({required this.subTitles, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5.h, top: 5.h),
      width: 100.w,
      color: navyColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 2.5.w),
            child: Text("دايت ابليكيشن", style: bigTitleStyle),
          ),
          ...subTitles
        ],
      ),
    );
  }
}

class SubTitleText extends StatelessWidget {
  String content;
  SubTitleText({required this.content, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3.5.w),
      child: Text(
        content,
        style: contentStyle,
      ),
    );
  }
}

class SectionSubTitleText extends StatelessWidget {
  String title;
  SectionSubTitleText({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: GoogleFonts.recursive(
          textStyle:
              TextStyle(fontSize: 2.h, color: Colors.white, shadows: const [
            BoxShadow(
                offset: Offset(
                  -2,
                  2,
                ),
                blurRadius: 2)
          ]),
        ));
  }
}

class ContentText extends StatelessWidget {
  String content;
  ContentText({required this.content, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: contentStyle,
    );
  }
}

class CustomExpansion extends StatefulWidget {
  String title;
  Color backGroundColor;
  List<Widget> children;
  List<Widget> subTitleChildren;

  CustomExpansion(
      {required this.children,
      required this.title,
      required this.subTitleChildren,
      required this.backGroundColor,
      super.key});

  @override
  State<CustomExpansion> createState() => _CustomExpansionState();
}

class _CustomExpansionState extends State<CustomExpansion> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      onExpansionChanged: (value) {
        isExpanded = value;
        setState(() {});
      },
      title: Padding(
        padding: EdgeInsets.only(bottom: 2.5.h, top: 2.5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 2.5.w),
              child: Text(
                widget.title,
                style: smallTitleStyle,
              ),
            ),
            !isExpanded
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: widget.subTitleChildren)
                : const SizedBox()
          ],
        ),
      ),
      collapsedBackgroundColor: babyBlue,
      backgroundColor: babyBlue,
      childrenPadding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      children: widget.children,
    );
  }
}

var vertical1SizedBox = SizedBox(
  height: .25.h,
);
var bigTitleStyle = GoogleFonts.lateef(fontSize: 26.sp, color: Colors.white);
var smallTitleStyle = GoogleFonts.lateef(
    fontSize: 20.sp,
    fontWeight: FontWeight.w100,
    color: const Color.fromARGB(255, 233, 244, 255));
var contentStyle = GoogleFonts.lateef(
    fontSize: 18.sp,
    fontWeight: FontWeight.w100,
    color: const Color.fromARGB(255, 211, 211, 211));
