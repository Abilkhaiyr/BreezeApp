import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'translations/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('kk'),
    Locale('ru'),
  ];

  /// No description provided for @aboutCompany.
  ///
  /// In kk, this message translates to:
  /// **'Компания туралы'**
  String get aboutCompany;

  /// No description provided for @aboutCompanyAccompanimentDescription.
  ///
  /// In kk, this message translates to:
  /// **'ЖКО бойынша сүйемелдеуді басынан төлемге дейін жүргіземіз'**
  String get aboutCompanyAccompanimentDescription;

  /// No description provided for @aboutCompanyAccompanimentTitle.
  ///
  /// In kk, this message translates to:
  /// **'Мәмілені сүйемелдеу'**
  String get aboutCompanyAccompanimentTitle;

  /// No description provided for @aboutCompanyContacts2gis.
  ///
  /// In kk, this message translates to:
  /// **'2gis'**
  String get aboutCompanyContacts2gis;

  /// No description provided for @aboutCompanyContactsInstagram.
  ///
  /// In kk, this message translates to:
  /// **'Instagram'**
  String get aboutCompanyContactsInstagram;

  /// No description provided for @aboutCompanyContactsTitle.
  ///
  /// In kk, this message translates to:
  /// **'Байланыстар'**
  String get aboutCompanyContactsTitle;

  /// No description provided for @aboutCompanyContactsWorkingHours.
  ///
  /// In kk, this message translates to:
  /// **'Күн сайын: 10:00–22:00'**
  String get aboutCompanyContactsWorkingHours;

  /// No description provided for @aboutCompanyDescription.
  ///
  /// In kk, this message translates to:
  /// **'Avtokomek — Қазақстандағы автокөлік иелеріне арналған алғашқы экожүйе: тәуелсіз сараптама, заңгерлік қолдау және бір қолданба ішіндегі автомобиль сервистерінің толық циклі.'**
  String get aboutCompanyDescription;

  /// No description provided for @aboutCompanyIndependentAssessmentDescription.
  ///
  /// In kk, this message translates to:
  /// **'Көлігіңіздің нақты құнын анықтап, сертификатталған бағалау жасаймыз'**
  String get aboutCompanyIndependentAssessmentDescription;

  /// No description provided for @aboutCompanyRegisterAccidentDescription.
  ///
  /// In kk, this message translates to:
  /// **'ЖКО-ны жылдам рәсімдеуге және барлық құжаттарды дайындауға көмектесеміз'**
  String get aboutCompanyRegisterAccidentDescription;

  /// No description provided for @aboutCompanySellCarDescription.
  ///
  /// In kk, this message translates to:
  /// **'Көлікті артық қоңыраусыз тез сатуға көмектесеміз'**
  String get aboutCompanySellCarDescription;

  /// No description provided for @aboutCompanySellCarTitle.
  ///
  /// In kk, this message translates to:
  /// **'Көлік сату'**
  String get aboutCompanySellCarTitle;

  /// No description provided for @aboutCompanyServicesAndMastersDescription.
  ///
  /// In kk, this message translates to:
  /// **'Көлікті жөндеу және қызмет көрсету үшін сенімді мамандарды табыңыз'**
  String get aboutCompanyServicesAndMastersDescription;

  /// No description provided for @aboutCompanyServicesAndMastersTitle.
  ///
  /// In kk, this message translates to:
  /// **'Қызметтер мен шеберлер'**
  String get aboutCompanyServicesAndMastersTitle;

  /// No description provided for @aboutCompanyServicesTitle.
  ///
  /// In kk, this message translates to:
  /// **'Сервистер'**
  String get aboutCompanyServicesTitle;

  /// No description provided for @aboutCompanyStoDescription.
  ///
  /// In kk, this message translates to:
  /// **'Көлігіңізді жөндеуге арналған бөлшектер мен сервисті таңдаңыз'**
  String get aboutCompanyStoDescription;

  /// No description provided for @aboutCompanyStoTitle.
  ///
  /// In kk, this message translates to:
  /// **'Қосалқы бөлшектер және СТО'**
  String get aboutCompanyStoTitle;

  /// No description provided for @aboutCompanyTaxiParkDescription.
  ///
  /// In kk, this message translates to:
  /// **'Көлікті таксопаркке қосып, ЖКО мәселесін шешіңіз'**
  String get aboutCompanyTaxiParkDescription;

  /// No description provided for @aboutCompanyTitle.
  ///
  /// In kk, this message translates to:
  /// **'Көлікті тез және артық қоңыраусыз сатуға әрі бағалауға көмектесеміз'**
  String get aboutCompanyTitle;

  /// No description provided for @access.
  ///
  /// In kk, this message translates to:
  /// **'Бағалау'**
  String get access;

  /// No description provided for @accessPrice.
  ///
  /// In kk, this message translates to:
  /// **'Бағалау құны'**
  String get accessPrice;

  /// No description provided for @accompanimentBasicAnalystTariff.
  ///
  /// In kk, this message translates to:
  /// **'Базалық аналитик'**
  String get accompanimentBasicAnalystTariff;

  /// No description provided for @accompanimentBasicAnalystTariffDescription.
  ///
  /// In kk, this message translates to:
  /// **'Авто бойынша есептер мен аналитика'**
  String get accompanimentBasicAnalystTariffDescription;

  /// No description provided for @accompanimentBasicTariff.
  ///
  /// In kk, this message translates to:
  /// **'Базалық'**
  String get accompanimentBasicTariff;

  /// No description provided for @accompanimentBasicTariffDescription.
  ///
  /// In kk, this message translates to:
  /// **'Автокөлікті тексеру және базалық міндеттер'**
  String get accompanimentBasicTariffDescription;

  /// No description provided for @accompanimentChooseTariff.
  ///
  /// In kk, this message translates to:
  /// **'Тарифті таңдаңыз'**
  String get accompanimentChooseTariff;

  /// No description provided for @accompanimentPremiumTariff.
  ///
  /// In kk, this message translates to:
  /// **'Премиум'**
  String get accompanimentPremiumTariff;

  /// No description provided for @accompanimentPremiumTariffDescription.
  ///
  /// In kk, this message translates to:
  /// **'Барлығы қосылған + басымдық'**
  String get accompanimentPremiumTariffDescription;

  /// No description provided for @accompanimentProfessionalTariff.
  ///
  /// In kk, this message translates to:
  /// **'Кәсіби'**
  String get accompanimentProfessionalTariff;

  /// No description provided for @accompanimentProfessionalTariffDescription.
  ///
  /// In kk, this message translates to:
  /// **'Құралдардың толық жиынтығы'**
  String get accompanimentProfessionalTariffDescription;

  /// No description provided for @accompanimentServiceChatButton.
  ///
  /// In kk, this message translates to:
  /// **'Чатқа өту'**
  String get accompanimentServiceChatButton;

  /// No description provided for @accompanimentServiceChatOpenError.
  ///
  /// In kk, this message translates to:
  /// **'Сүйемелдеу чатын ашу мүмкін болмады'**
  String get accompanimentServiceChatOpenError;

  /// No description provided for @accompanimentServiceChatTitle.
  ///
  /// In kk, this message translates to:
  /// **'ЖКО бойынша сүйемелдеу'**
  String get accompanimentServiceChatTitle;

  /// No description provided for @accompanimentTariffsTab.
  ///
  /// In kk, this message translates to:
  /// **'Тарифтер'**
  String get accompanimentTariffsTab;

  /// No description provided for @accountRegister.
  ///
  /// In kk, this message translates to:
  /// **'Аккаунт тіркеу'**
  String get accountRegister;

  /// No description provided for @active.
  ///
  /// In kk, this message translates to:
  /// **'Белсенді'**
  String get active;

  /// No description provided for @adRequestSentSubtitle.
  ///
  /// In kk, this message translates to:
  /// **'Біздің менеджер сізбен 1 жұмыс күні ішінде хабарласады'**
  String get adRequestSentSubtitle;

  /// No description provided for @adRequestSentTitle.
  ///
  /// In kk, this message translates to:
  /// **'Өтінім модерацияға жіберілді'**
  String get adRequestSentTitle;

  /// No description provided for @add.
  ///
  /// In kk, this message translates to:
  /// **'Қосу'**
  String get add;

  /// No description provided for @add2.
  ///
  /// In kk, this message translates to:
  /// **'Қосу'**
  String get add2;

  /// No description provided for @addAuto.
  ///
  /// In kk, this message translates to:
  /// **'Көлік қосу'**
  String get addAuto;

  /// No description provided for @addCar.
  ///
  /// In kk, this message translates to:
  /// **'Көлік қосу'**
  String get addCar;

  /// No description provided for @addPhoto.
  ///
  /// In kk, this message translates to:
  /// **'Фото қосу'**
  String get addPhoto;

  /// No description provided for @add_a_photo.
  ///
  /// In kk, this message translates to:
  /// **'Фотосурет қосыңыз'**
  String get add_a_photo;

  /// No description provided for @add_a_review.
  ///
  /// In kk, this message translates to:
  /// **'Пікір қосу'**
  String get add_a_review;

  /// No description provided for @add_this_to_the_catalog.
  ///
  /// In kk, this message translates to:
  /// **'Санатқа қосу'**
  String get add_this_to_the_catalog;

  /// No description provided for @additional.
  ///
  /// In kk, this message translates to:
  /// **'Қосымша'**
  String get additional;

  /// No description provided for @additionalAmount.
  ///
  /// In kk, this message translates to:
  /// **'Қосымша сома'**
  String get additionalAmount;

  /// No description provided for @addreview.
  ///
  /// In kk, this message translates to:
  /// **'Пікір қалдыру'**
  String get addreview;

  /// No description provided for @advertisement.
  ///
  /// In kk, this message translates to:
  /// **'Жарнама'**
  String get advertisement;

  /// No description provided for @advertisementDisplaySize.
  ///
  /// In kk, this message translates to:
  /// **'Жарнама өлшемі'**
  String get advertisementDisplaySize;

  /// No description provided for @advertisementMediaCover.
  ///
  /// In kk, this message translates to:
  /// **'Видео мұқабасы'**
  String get advertisementMediaCover;

  /// No description provided for @advertisementMediaCoverRequired.
  ///
  /// In kk, this message translates to:
  /// **'Видео үшін мұқабаны міндетті түрде жүктеңіз.'**
  String get advertisementMediaCoverRequired;

  /// No description provided for @advertisementName.
  ///
  /// In kk, this message translates to:
  /// **'Жарнама атауы'**
  String get advertisementName;

  /// No description provided for @advertisementTariffDays.
  ///
  /// In kk, this message translates to:
  /// **'күн'**
  String get advertisementTariffDays;

  /// No description provided for @afterInsuranceCompanyReturnsAmountSupportReceiptIssued.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыру компаниясы соманы қайтарғаннан кейін, сізге сүйемелдеу қызметіне төлем чегі жасалады'**
  String get afterInsuranceCompanyReturnsAmountSupportReceiptIssued;

  /// No description provided for @all.
  ///
  /// In kk, this message translates to:
  /// **'Барлығы'**
  String get all;

  /// No description provided for @allDataOfAccidentOffender.
  ///
  /// In kk, this message translates to:
  /// **'ЖКО кінәлісі туралы барлық деректер'**
  String get allDataOfAccidentOffender;

  /// No description provided for @allDriverData.
  ///
  /// In kk, this message translates to:
  /// **'Жүргізуші туралы барлық деректер'**
  String get allDriverData;

  /// No description provided for @amount.
  ///
  /// In kk, this message translates to:
  /// **'Сома'**
  String get amount;

  /// No description provided for @and.
  ///
  /// In kk, this message translates to:
  /// **'және'**
  String get and;

  /// No description provided for @answer.
  ///
  /// In kk, this message translates to:
  /// **'Жауап беру'**
  String get answer;

  /// No description provided for @answers.
  ///
  /// In kk, this message translates to:
  /// **'жауаптар'**
  String get answers;

  /// No description provided for @applicationStatusesAvailableInSupportSection.
  ///
  /// In kk, this message translates to:
  /// **'Өтінім статусын бөлімнен көруге болады'**
  String get applicationStatusesAvailableInSupportSection;

  /// No description provided for @applicationSubmission.
  ///
  /// In kk, this message translates to:
  /// **'Өтініш жіберу'**
  String get applicationSubmission;

  /// No description provided for @appraisalDateTime.
  ///
  /// In kk, this message translates to:
  /// **'Бағалау күні мен уақыты '**
  String get appraisalDateTime;

  /// No description provided for @appraiserNumber.
  ///
  /// In kk, this message translates to:
  /// **'Бағалаушының нөмірі '**
  String get appraiserNumber;

  /// No description provided for @approvedAmount.
  ///
  /// In kk, this message translates to:
  /// **'Расталған сома'**
  String get approvedAmount;

  /// No description provided for @approximateCarPrice.
  ///
  /// In kk, this message translates to:
  /// **'Автокөліктің шамамен құны: {amount}'**
  String approximateCarPrice(String amount);

  /// No description provided for @approximatelyPrice.
  ///
  /// In kk, this message translates to:
  /// **'Автокөліктің болжамды құны'**
  String get approximatelyPrice;

  /// No description provided for @archive.
  ///
  /// In kk, this message translates to:
  /// **'Мұрағат'**
  String get archive;

  /// No description provided for @assessmentPaymentSuccessSubtitle.
  ///
  /// In kk, this message translates to:
  /// **'Нақты соманы есептеу біраз уақытты алады'**
  String get assessmentPaymentSuccessSubtitle;

  /// No description provided for @assessmentPaymentSuccessTitle.
  ///
  /// In kk, this message translates to:
  /// **'Төлем сәтті аяқталды'**
  String get assessmentPaymentSuccessTitle;

  /// No description provided for @backOfDoc.
  ///
  /// In kk, this message translates to:
  /// **'Құжаттың артқы беті'**
  String get backOfDoc;

  /// No description provided for @block.
  ///
  /// In kk, this message translates to:
  /// **'Бұғаттау'**
  String get block;

  /// No description provided for @blockUserQuestion.
  ///
  /// In kk, this message translates to:
  /// **'Осы пайдаланушыны бұғаттағыңыз келе ме?'**
  String get blockUserQuestion;

  /// No description provided for @blockUserTitle.
  ///
  /// In kk, this message translates to:
  /// **'Пайдаланушыны бұғаттау керек пе?'**
  String get blockUserTitle;

  /// No description provided for @blockedUserSendError.
  ///
  /// In kk, this message translates to:
  /// **'Бұғатталған пайдаланушыға хабарлама жібере алмайсыз'**
  String get blockedUserSendError;

  /// No description provided for @branch.
  ///
  /// In kk, this message translates to:
  /// **'Филиалы'**
  String get branch;

  /// No description provided for @branchName.
  ///
  /// In kk, this message translates to:
  /// **'Филиалдың атауы'**
  String get branchName;

  /// No description provided for @buyAssessment.
  ///
  /// In kk, this message translates to:
  /// **'Бағалау қызметін сатып алу'**
  String get buyAssessment;

  /// No description provided for @buySubscription.
  ///
  /// In kk, this message translates to:
  /// **'Жазылымды сатып алу'**
  String get buySubscription;

  /// No description provided for @byClickingTheButtonYouAgreeTo.
  ///
  /// In kk, this message translates to:
  /// **'Түймені басу арқылы сіз келісесіз'**
  String get byClickingTheButtonYouAgreeTo;

  /// No description provided for @calculation_formula_each_like_adds.
  ///
  /// In kk, this message translates to:
  /// **'Есептеу формуласы: әр ұнату +0.1 (максимум — 5.0) қосады.'**
  String get calculation_formula_each_like_adds;

  /// No description provided for @camera.
  ///
  /// In kk, this message translates to:
  /// **'Камера'**
  String get camera;

  /// No description provided for @cancel.
  ///
  /// In kk, this message translates to:
  /// **'Бас тарту'**
  String get cancel;

  /// No description provided for @carAssessment.
  ///
  /// In kk, this message translates to:
  /// **'Көлікті бағалау'**
  String get carAssessment;

  /// No description provided for @carAssessmentFor60k.
  ///
  /// In kk, this message translates to:
  /// **'Қызмет құны — 60 000 ₸'**
  String get carAssessmentFor60k;

  /// No description provided for @carDamageAfterAssessment.
  ///
  /// In kk, this message translates to:
  /// **'Бағалаудан кейінгі автокөлік зақымы'**
  String get carDamageAfterAssessment;

  /// No description provided for @carDamageAssessment.
  ///
  /// In kk, this message translates to:
  /// **'Көлік зақымын бағалау'**
  String get carDamageAssessment;

  /// No description provided for @carIntoPhoto.
  ///
  /// In kk, this message translates to:
  /// **'Салонның фотосуреті'**
  String get carIntoPhoto;

  /// No description provided for @carLabel.
  ///
  /// In kk, this message translates to:
  /// **'Көлік:'**
  String get carLabel;

  /// No description provided for @carMarketValue.
  ///
  /// In kk, this message translates to:
  /// **'Көліктің нарықтық құны'**
  String get carMarketValue;

  /// No description provided for @carPhotos.
  ///
  /// In kk, this message translates to:
  /// **'Көліктің фотосуреті'**
  String get carPhotos;

  /// No description provided for @carsCityAstana.
  ///
  /// In kk, this message translates to:
  /// **'Астана'**
  String get carsCityAstana;

  /// No description provided for @carsDetailAuctionDescription.
  ///
  /// In kk, this message translates to:
  /// **'Аукцион үшін баға ұсыныңыз'**
  String get carsDetailAuctionDescription;

  /// No description provided for @carsDetailAuctionTitle.
  ///
  /// In kk, this message translates to:
  /// **'Аукционға қатысу'**
  String get carsDetailAuctionTitle;

  /// No description provided for @carsFilterAllRegions.
  ///
  /// In kk, this message translates to:
  /// **'Барлық өңірлер'**
  String get carsFilterAllRegions;

  /// No description provided for @carsFilterBrandModel.
  ///
  /// In kk, this message translates to:
  /// **'Маркасы мен моделі'**
  String get carsFilterBrandModel;

  /// No description provided for @carsFilterChooseBrandModel.
  ///
  /// In kk, this message translates to:
  /// **'Маркасы мен моделін таңдаңыз'**
  String get carsFilterChooseBrandModel;

  /// No description provided for @carsFilterChooseType.
  ///
  /// In kk, this message translates to:
  /// **'Түрін таңдаңыз'**
  String get carsFilterChooseType;

  /// No description provided for @carsFilterFrom.
  ///
  /// In kk, this message translates to:
  /// **'бастап'**
  String get carsFilterFrom;

  /// No description provided for @carsFilterFuelType.
  ///
  /// In kk, this message translates to:
  /// **'Отын түрі'**
  String get carsFilterFuelType;

  /// No description provided for @carsFilterPopularFirst.
  ///
  /// In kk, this message translates to:
  /// **'Алдымен танымал'**
  String get carsFilterPopularFirst;

  /// No description provided for @carsFilterPriceTenge.
  ///
  /// In kk, this message translates to:
  /// **'Бағасы, ₸'**
  String get carsFilterPriceTenge;

  /// No description provided for @carsFilterProductionYear.
  ///
  /// In kk, this message translates to:
  /// **'Шығарылған жылы'**
  String get carsFilterProductionYear;

  /// No description provided for @carsFilterSort.
  ///
  /// In kk, this message translates to:
  /// **'Сұрыптау'**
  String get carsFilterSort;

  /// No description provided for @carsFilterTo.
  ///
  /// In kk, this message translates to:
  /// **'дейін'**
  String get carsFilterTo;

  /// No description provided for @carsMockDescription.
  ///
  /// In kk, this message translates to:
  /// **'2.0 л, кроссовер, автомат, алдыңғы жетек, бензин, жағдайы жақсы'**
  String get carsMockDescription;

  /// No description provided for @carsNew.
  ///
  /// In kk, this message translates to:
  /// **'Жаңа'**
  String get carsNew;

  /// No description provided for @carsUsed.
  ///
  /// In kk, this message translates to:
  /// **'Жүрілген'**
  String get carsUsed;

  /// No description provided for @catalog.
  ///
  /// In kk, this message translates to:
  /// **'Каталог'**
  String get catalog;

  /// No description provided for @category.
  ///
  /// In kk, this message translates to:
  /// **'Санат'**
  String get category;

  /// No description provided for @change.
  ///
  /// In kk, this message translates to:
  /// **'Өзгерту'**
  String get change;

  /// No description provided for @chatListEmptyDescription.
  ///
  /// In kk, this message translates to:
  /// **'Чаттар тізімі жақында осы бөлімде пайда болады'**
  String get chatListEmptyDescription;

  /// No description provided for @chatListEmptyTitle.
  ///
  /// In kk, this message translates to:
  /// **'Әзірге мұнда бос'**
  String get chatListEmptyTitle;

  /// No description provided for @chatListTitle.
  ///
  /// In kk, this message translates to:
  /// **'Хабарламалар'**
  String get chatListTitle;

  /// No description provided for @choose.
  ///
  /// In kk, this message translates to:
  /// **'Таңдаңыз'**
  String get choose;

  /// No description provided for @choose_a_city.
  ///
  /// In kk, this message translates to:
  /// **'Қаланы таңдаңыз'**
  String get choose_a_city;

  /// No description provided for @city.
  ///
  /// In kk, this message translates to:
  /// **'Қала'**
  String get city;

  /// No description provided for @cityAndAddress.
  ///
  /// In kk, this message translates to:
  /// **'Қала және мекенжай'**
  String get cityAndAddress;

  /// No description provided for @clientPhone.
  ///
  /// In kk, this message translates to:
  /// **'Клиенттің телефоны  '**
  String get clientPhone;

  /// No description provided for @comment.
  ///
  /// In kk, this message translates to:
  /// **'Пікір'**
  String get comment;

  /// No description provided for @commentFromAdmin.
  ///
  /// In kk, this message translates to:
  /// **'Админнің пікірі'**
  String get commentFromAdmin;

  /// No description provided for @commentFromAvtokomek.
  ///
  /// In kk, this message translates to:
  /// **'Автокомектен пікірлер'**
  String get commentFromAvtokomek;

  /// No description provided for @commentFromManager.
  ///
  /// In kk, this message translates to:
  /// **'Менеджердің пікірі'**
  String get commentFromManager;

  /// No description provided for @commentsFromClient.
  ///
  /// In kk, this message translates to:
  /// **'Клиенттің пікірі'**
  String get commentsFromClient;

  /// No description provided for @complain.
  ///
  /// In kk, this message translates to:
  /// **'Шағымдану'**
  String get complain;

  /// No description provided for @complaintCommentHint.
  ///
  /// In kk, this message translates to:
  /// **'Пікір'**
  String get complaintCommentHint;

  /// No description provided for @complaintReasonTitle.
  ///
  /// In kk, this message translates to:
  /// **'Шағым себебі'**
  String get complaintReasonTitle;

  /// No description provided for @complaintReasonsLoadError.
  ///
  /// In kk, this message translates to:
  /// **'Шағым себептерін жүктеу мүмкін болмады'**
  String get complaintReasonsLoadError;

  /// No description provided for @completedAssessmentDocument.
  ///
  /// In kk, this message translates to:
  /// **'Құжат 10.03.25'**
  String get completedAssessmentDocument;

  /// No description provided for @completedAssessmentFile.
  ///
  /// In kk, this message translates to:
  /// **'Файл 10.03.25'**
  String get completedAssessmentFile;

  /// No description provided for @completedAssessmentReport.
  ///
  /// In kk, this message translates to:
  /// **'Бағалау есебі 10.03.25'**
  String get completedAssessmentReport;

  /// No description provided for @confirm.
  ///
  /// In kk, this message translates to:
  /// **'Растау'**
  String get confirm;

  /// No description provided for @confirmationCode.
  ///
  /// In kk, this message translates to:
  /// **'Растау коды'**
  String get confirmationCode;

  /// No description provided for @confirmed.
  ///
  /// In kk, this message translates to:
  /// **'Расталған'**
  String get confirmed;

  /// No description provided for @contractDate.
  ///
  /// In kk, this message translates to:
  /// **'Келісімшарт күні'**
  String get contractDate;

  /// No description provided for @cost60Tenge.
  ///
  /// In kk, this message translates to:
  /// **'Қызмет құны — 60 000 ₸'**
  String get cost60Tenge;

  /// No description provided for @cost60k.
  ///
  /// In kk, this message translates to:
  /// **'Қызмет құны — 60 000 ₸'**
  String get cost60k;

  /// No description provided for @country.
  ///
  /// In kk, this message translates to:
  /// **'Ел'**
  String get country;

  /// No description provided for @countryAndCity.
  ///
  /// In kk, this message translates to:
  /// **'Ел және қала'**
  String get countryAndCity;

  /// No description provided for @countryName.
  ///
  /// In kk, this message translates to:
  /// **'Ел атауы'**
  String get countryName;

  /// No description provided for @court.
  ///
  /// In kk, this message translates to:
  /// **'СОТ'**
  String get court;

  /// No description provided for @courtRegistrationDate.
  ///
  /// In kk, this message translates to:
  /// **'Сотқа тіркелген күн'**
  String get courtRegistrationDate;

  /// No description provided for @crashDat.
  ///
  /// In kk, this message translates to:
  /// **'Апат күні'**
  String get crashDat;

  /// No description provided for @crashDate.
  ///
  /// In kk, this message translates to:
  /// **'ЖКО күні'**
  String get crashDate;

  /// No description provided for @crashTime.
  ///
  /// In kk, this message translates to:
  /// **'Апат уақыты'**
  String get crashTime;

  /// No description provided for @create.
  ///
  /// In kk, this message translates to:
  /// **'Құру'**
  String get create;

  /// No description provided for @createAccount.
  ///
  /// In kk, this message translates to:
  /// **'Аккаунты құру'**
  String get createAccount;

  /// No description provided for @createAccountButton.
  ///
  /// In kk, this message translates to:
  /// **'Аккаунты құру'**
  String get createAccountButton;

  /// No description provided for @createAdAccessoriesMultimediaTitle.
  ///
  /// In kk, this message translates to:
  /// **'Аксессуарлар және мультимедиа'**
  String get createAdAccessoriesMultimediaTitle;

  /// No description provided for @createAdAccessoriesTitle.
  ///
  /// In kk, this message translates to:
  /// **'Аксессуарлар туралы хабарландыру беру'**
  String get createAdAccessoriesTitle;

  /// No description provided for @createAdAvailability.
  ///
  /// In kk, this message translates to:
  /// **'Бар-жоғы'**
  String get createAdAvailability;

  /// No description provided for @createAdBoltPattern.
  ///
  /// In kk, this message translates to:
  /// **'Болт үлгісі'**
  String get createAdBoltPattern;

  /// No description provided for @createAdClose.
  ///
  /// In kk, this message translates to:
  /// **'Жабу'**
  String get createAdClose;

  /// No description provided for @createAdCondition.
  ///
  /// In kk, this message translates to:
  /// **'Жағдайы'**
  String get createAdCondition;

  /// No description provided for @createAdConsumableBrakeFluid.
  ///
  /// In kk, this message translates to:
  /// **'Тежегіш сұйықтығы'**
  String get createAdConsumableBrakeFluid;

  /// No description provided for @createAdConsumableBrakePads.
  ///
  /// In kk, this message translates to:
  /// **'Тежегіш қалыптары'**
  String get createAdConsumableBrakePads;

  /// No description provided for @createAdConsumableMotorOil.
  ///
  /// In kk, this message translates to:
  /// **'Мотор майы'**
  String get createAdConsumableMotorOil;

  /// No description provided for @createAdConsumableTransmissionOil.
  ///
  /// In kk, this message translates to:
  /// **'Трансмиссия майы'**
  String get createAdConsumableTransmissionOil;

  /// No description provided for @createAdConsumablesTitle.
  ///
  /// In kk, this message translates to:
  /// **'Майлар және шығын материалдары туралы хабарландыру беру'**
  String get createAdConsumablesTitle;

  /// No description provided for @createAdDiameter.
  ///
  /// In kk, this message translates to:
  /// **'Диаметр'**
  String get createAdDiameter;

  /// No description provided for @createAdDiskAssembled.
  ///
  /// In kk, this message translates to:
  /// **'Құрастырмалы'**
  String get createAdDiskAssembled;

  /// No description provided for @createAdDiskCast.
  ///
  /// In kk, this message translates to:
  /// **'Құйма'**
  String get createAdDiskCast;

  /// No description provided for @createAdDiskForged.
  ///
  /// In kk, this message translates to:
  /// **'Соғылған'**
  String get createAdDiskForged;

  /// No description provided for @createAdDiskStamped.
  ///
  /// In kk, this message translates to:
  /// **'Штампталған'**
  String get createAdDiskStamped;

  /// No description provided for @createAdDisksTitle.
  ///
  /// In kk, this message translates to:
  /// **'Диск туралы хабарландыру беру'**
  String get createAdDisksTitle;

  /// No description provided for @createAdGo.
  ///
  /// In kk, this message translates to:
  /// **'Өту'**
  String get createAdGo;

  /// No description provided for @createAdInStock.
  ///
  /// In kk, this message translates to:
  /// **'Қоймада бар'**
  String get createAdInStock;

  /// No description provided for @createAdKind.
  ///
  /// In kk, this message translates to:
  /// **'Түрі'**
  String get createAdKind;

  /// No description provided for @createAdMaxPhotosError.
  ///
  /// In kk, this message translates to:
  /// **'8 фотодан артық таңдауға болмайды'**
  String get createAdMaxPhotosError;

  /// No description provided for @createAdMultimediaAmplifiers.
  ///
  /// In kk, this message translates to:
  /// **'Автокөлік күшейткіштері'**
  String get createAdMultimediaAmplifiers;

  /// No description provided for @createAdMultimediaCarStereos.
  ///
  /// In kk, this message translates to:
  /// **'Автомагнитолалар'**
  String get createAdMultimediaCarStereos;

  /// No description provided for @createAdMultimediaFmTransmitters.
  ///
  /// In kk, this message translates to:
  /// **'FM-трансмиттерлер'**
  String get createAdMultimediaFmTransmitters;

  /// No description provided for @createAdMultimediaSpeakersSubwoofers.
  ///
  /// In kk, this message translates to:
  /// **'Динамиктер мен сабвуферлер'**
  String get createAdMultimediaSpeakersSubwoofers;

  /// No description provided for @createAdMultimediaTitle.
  ///
  /// In kk, this message translates to:
  /// **'Мультимедиа туралы хабарландыру беру'**
  String get createAdMultimediaTitle;

  /// No description provided for @createAdMultimediaTypes.
  ///
  /// In kk, this message translates to:
  /// **'Мультимедиа түрлері'**
  String get createAdMultimediaTypes;

  /// No description provided for @createAdNew.
  ///
  /// In kk, this message translates to:
  /// **'Жаңа'**
  String get createAdNew;

  /// No description provided for @createAdOffset.
  ///
  /// In kk, this message translates to:
  /// **'Шығыңқысы'**
  String get createAdOffset;

  /// No description provided for @createAdOnOrder.
  ///
  /// In kk, this message translates to:
  /// **'Тапсырыспен'**
  String get createAdOnOrder;

  /// No description provided for @createAdPhoto.
  ///
  /// In kk, this message translates to:
  /// **'Фото'**
  String get createAdPhoto;

  /// No description provided for @createAdPhotoPickError.
  ///
  /// In kk, this message translates to:
  /// **'Фото таңдау қатесі: {error}'**
  String createAdPhotoPickError(Object error);

  /// No description provided for @createAdPrice.
  ///
  /// In kk, this message translates to:
  /// **'Баға'**
  String get createAdPrice;

  /// No description provided for @createAdPriceKzt.
  ///
  /// In kk, this message translates to:
  /// **'Теңгедегі баға'**
  String get createAdPriceKzt;

  /// No description provided for @createAdPriceFrom.
  ///
  /// In kk, this message translates to:
  /// **'Бастап'**
  String get createAdPriceFrom;

  /// No description provided for @createAdPriceTo.
  ///
  /// In kk, this message translates to:
  /// **'Дейін'**
  String get createAdPriceTo;

  /// No description provided for @createAdProfileHeight.
  ///
  /// In kk, this message translates to:
  /// **'Профиль биіктігі'**
  String get createAdProfileHeight;

  /// No description provided for @createAdRequiredFieldsError.
  ///
  /// In kk, this message translates to:
  /// **'Барлық міндетті өрістерді толтырыңыз'**
  String get createAdRequiredFieldsError;

  /// No description provided for @createAdSeasonality.
  ///
  /// In kk, this message translates to:
  /// **'Маусымдылық'**
  String get createAdSeasonality;

  /// No description provided for @createAdShortDescriptionHint.
  ///
  /// In kk, this message translates to:
  /// **'Қысқаша сипаттаңыз'**
  String get createAdShortDescriptionHint;

  /// No description provided for @createAdSubmit.
  ///
  /// In kk, this message translates to:
  /// **'Жіберу'**
  String get createAdSubmit;

  /// No description provided for @createAdSubmitting.
  ///
  /// In kk, this message translates to:
  /// **'Жіберілуде...'**
  String get createAdSubmitting;

  /// No description provided for @createAdSuccessTitle.
  ///
  /// In kk, this message translates to:
  /// **'Модерацияға жіберілді'**
  String get createAdSuccessTitle;

  /// No description provided for @createAdSuccessSubtitle.
  ///
  /// In kk, this message translates to:
  /// **'Модератор тексергеннен кейін хабарландыру қолданбада пайда болады.'**
  String get createAdSuccessSubtitle;

  /// No description provided for @createAdTireAllSeason.
  ///
  /// In kk, this message translates to:
  /// **'Барлық маусымдық'**
  String get createAdTireAllSeason;

  /// No description provided for @createAdTireStudded.
  ///
  /// In kk, this message translates to:
  /// **'Тікенекті'**
  String get createAdTireStudded;

  /// No description provided for @createAdTireSummer.
  ///
  /// In kk, this message translates to:
  /// **'Жазғы'**
  String get createAdTireSummer;

  /// No description provided for @createAdTireWinter.
  ///
  /// In kk, this message translates to:
  /// **'Қысқы'**
  String get createAdTireWinter;

  /// No description provided for @createAdTiresTitle.
  ///
  /// In kk, this message translates to:
  /// **'Шина туралы хабарландыру беру'**
  String get createAdTiresTitle;

  /// No description provided for @createAdTitleHint.
  ///
  /// In kk, this message translates to:
  /// **'Тақырып'**
  String get createAdTitleHint;

  /// No description provided for @createAdTitleLabel.
  ///
  /// In kk, this message translates to:
  /// **'Тақырып'**
  String get createAdTitleLabel;

  /// No description provided for @createAdType.
  ///
  /// In kk, this message translates to:
  /// **'Түрі'**
  String get createAdType;

  /// No description provided for @createAdUsed.
  ///
  /// In kk, this message translates to:
  /// **'Б/қ'**
  String get createAdUsed;

  /// No description provided for @createAdWidth.
  ///
  /// In kk, this message translates to:
  /// **'Ені'**
  String get createAdWidth;

  /// No description provided for @createPassword.
  ///
  /// In kk, this message translates to:
  /// **'Құпиясөз ойлап табыңыз'**
  String get createPassword;

  /// No description provided for @createYourFirstCard.
  ///
  /// In kk, this message translates to:
  /// **'Бірінші картаны жасаңыз және өз әсерлеріңізбен бөлісіңіз'**
  String get createYourFirstCard;

  /// No description provided for @created.
  ///
  /// In kk, this message translates to:
  /// **'Құрылды'**
  String get created;

  /// No description provided for @culprit.
  ///
  /// In kk, this message translates to:
  /// **'Кінәлі'**
  String get culprit;

  /// No description provided for @currentStatus.
  ///
  /// In kk, this message translates to:
  /// **'Қазіргі статус'**
  String get currentStatus;

  /// No description provided for @day.
  ///
  /// In kk, this message translates to:
  /// **'күн'**
  String get day;

  /// No description provided for @decisionSigningDate.
  ///
  /// In kk, this message translates to:
  /// **'Шешімге қол қойылған күн'**
  String get decisionSigningDate;

  /// No description provided for @deleteAcc.
  ///
  /// In kk, this message translates to:
  /// **'Аккаунтты жою'**
  String get deleteAcc;

  /// No description provided for @delete_an_account.
  ///
  /// In kk, this message translates to:
  /// **'Аккаунты жою'**
  String get delete_an_account;

  /// No description provided for @description.
  ///
  /// In kk, this message translates to:
  /// **'Сипаттама'**
  String get description;

  /// No description provided for @detail.
  ///
  /// In kk, this message translates to:
  /// **'Толығырақ'**
  String get detail;

  /// No description provided for @didnot_find_what_you_needed.
  ///
  /// In kk, this message translates to:
  /// **'Дұрысын таппадыңыз ба?'**
  String get didnot_find_what_you_needed;

  /// No description provided for @districtPoliceDepartment.
  ///
  /// In kk, this message translates to:
  /// **'Аудандық ішкі істер бөлімі'**
  String get districtPoliceDepartment;

  /// No description provided for @doNotHaveFeedback.
  ///
  /// In kk, this message translates to:
  /// **'Сізде әлі пікірлер жоқ. Өз пікіріңізді қалдырыңыз!'**
  String get doNotHaveFeedback;

  /// No description provided for @doYouHaveAccount.
  ///
  /// In kk, this message translates to:
  /// **'Сізде бұрыннан аккаунт бар ма?'**
  String get doYouHaveAccount;

  /// No description provided for @documents.
  ///
  /// In kk, this message translates to:
  /// **'Құжаттар'**
  String get documents;

  /// No description provided for @done.
  ///
  /// In kk, this message translates to:
  /// **'Дайын'**
  String get done;

  /// No description provided for @dontNeed.
  ///
  /// In kk, this message translates to:
  /// **'керек емес'**
  String get dontNeed;

  /// No description provided for @download.
  ///
  /// In kk, this message translates to:
  /// **'Жүктеу'**
  String get download;

  /// No description provided for @downloading.
  ///
  /// In kk, this message translates to:
  /// **'Жүктеу'**
  String get downloading;

  /// No description provided for @draveCar.
  ///
  /// In kk, this message translates to:
  /// **'Көлік жүргізді'**
  String get draveCar;

  /// No description provided for @driverCard.
  ///
  /// In kk, this message translates to:
  /// **'Жүргізуші куәлігі'**
  String get driverCard;

  /// No description provided for @driverIdCard.
  ///
  /// In kk, this message translates to:
  /// **'Көлік иесінің жеке куәлігі'**
  String get driverIdCard;

  /// No description provided for @driverStatus.
  ///
  /// In kk, this message translates to:
  /// **'Жүргізуші статусы'**
  String get driverStatus;

  /// No description provided for @driverWaybill.
  ///
  /// In kk, this message translates to:
  /// **'Жүргізушінің жол парағы'**
  String get driverWaybill;

  /// No description provided for @early.
  ///
  /// In kk, this message translates to:
  /// **'Бұрын'**
  String get early;

  /// No description provided for @edit.
  ///
  /// In kk, this message translates to:
  /// **'Өзгерту'**
  String get edit;

  /// No description provided for @editCar.
  ///
  /// In kk, this message translates to:
  /// **'Көлікті өзгерту'**
  String get editCar;

  /// No description provided for @editDocuments.
  ///
  /// In kk, this message translates to:
  /// **'Құжаттарды өзгерту'**
  String get editDocuments;

  /// No description provided for @editProfile.
  ///
  /// In kk, this message translates to:
  /// **'Профильді өзгерту'**
  String get editProfile;

  /// No description provided for @edit_Profile.
  ///
  /// In kk, this message translates to:
  /// **'Профильді өңдеу'**
  String get edit_Profile;

  /// No description provided for @email.
  ///
  /// In kk, this message translates to:
  /// **'Пошта'**
  String get email;

  /// No description provided for @error.
  ///
  /// In kk, this message translates to:
  /// **'Қате'**
  String get error;

  /// No description provided for @end.
  ///
  /// In kk, this message translates to:
  /// **'Аяқталды'**
  String get end;

  /// No description provided for @english.
  ///
  /// In kk, this message translates to:
  /// **'Ағылшынша'**
  String get english;

  /// No description provided for @enterAddress.
  ///
  /// In kk, this message translates to:
  /// **'Мекенжайды енгізіңіз'**
  String get enterAddress;

  /// No description provided for @enterAdvertisementName.
  ///
  /// In kk, this message translates to:
  /// **'Жарнама атауы'**
  String get enterAdvertisementName;

  /// No description provided for @enterCompanyOrName.
  ///
  /// In kk, this message translates to:
  /// **'Атауын жазыңыз'**
  String get enterCompanyOrName;

  /// No description provided for @enterCrashTime.
  ///
  /// In kk, this message translates to:
  /// **'Апат уақытын енгізіңіз'**
  String get enterCrashTime;

  /// No description provided for @enterDefinition.
  ///
  /// In kk, this message translates to:
  /// **'Сипаттаманы енгізіңіз'**
  String get enterDefinition;

  /// No description provided for @enterFoundedYear.
  ///
  /// In kk, this message translates to:
  /// **'Шығарылған жылын енгізіңіз'**
  String get enterFoundedYear;

  /// No description provided for @enterGosNumber.
  ///
  /// In kk, this message translates to:
  /// **'Нөмірді енгізіңіз'**
  String get enterGosNumber;

  /// No description provided for @enterIin.
  ///
  /// In kk, this message translates to:
  /// **'ЖСН енгізіңіз'**
  String get enterIin;

  /// No description provided for @enterMark.
  ///
  /// In kk, this message translates to:
  /// **'Маркасын енгізіңіз'**
  String get enterMark;

  /// No description provided for @enterModel.
  ///
  /// In kk, this message translates to:
  /// **'Моделін енгізіңіз'**
  String get enterModel;

  /// No description provided for @enterNewPassword.
  ///
  /// In kk, this message translates to:
  /// **'Жаңа құпия сөзді енгізіңіз'**
  String get enterNewPassword;

  /// No description provided for @enterRunCar.
  ///
  /// In kk, this message translates to:
  /// **'Жүрісті енгізіңіз'**
  String get enterRunCar;

  /// No description provided for @enterThePassword.
  ///
  /// In kk, this message translates to:
  /// **'Құпия сөзді енгізіңіз'**
  String get enterThePassword;

  /// No description provided for @enterYourCode.
  ///
  /// In kk, this message translates to:
  /// **'Электрондық поштаңыздан кодты енгізіңіз'**
  String get enterYourCode;

  /// No description provided for @enterYourEmailAddress.
  ///
  /// In kk, this message translates to:
  /// **'Поштаны енгізіңіз'**
  String get enterYourEmailAddress;

  /// No description provided for @enterYourFullName.
  ///
  /// In kk, this message translates to:
  /// **'Толық аты-жөнін енгізіңіз'**
  String get enterYourFullName;

  /// No description provided for @enterYourPhoneNumber.
  ///
  /// In kk, this message translates to:
  /// **'Телефон нөмірін енгізіңіз'**
  String get enterYourPhoneNumber;

  /// No description provided for @entryIntoLegalForce.
  ///
  /// In kk, this message translates to:
  /// **'Заңды күшіне ену'**
  String get entryIntoLegalForce;

  /// No description provided for @estimatedNoPriceText.
  ///
  /// In kk, this message translates to:
  /// **'Нақты құн мен толық есепті алу үшін толыққанды бағалау жүргізу қажет.'**
  String get estimatedNoPriceText;

  /// No description provided for @estimatedPriceText.
  ///
  /// In kk, this message translates to:
  /// **'Бұл сома алдын ала есептелген. Нақты құн мен толық есепті алу үшін толыққанды бағалау жүргізу қажет.'**
  String get estimatedPriceText;

  /// No description provided for @exactAmountFromReport.
  ///
  /// In kk, this message translates to:
  /// **'Бағалау сомасы'**
  String get exactAmountFromReport;

  /// No description provided for @expirationDate.
  ///
  /// In kk, this message translates to:
  /// **'Жарамдылық мерзімі'**
  String get expirationDate;

  /// No description provided for @favoritesCarsEmptyAction.
  ///
  /// In kk, this message translates to:
  /// **'Көліктерге өту'**
  String get favoritesCarsEmptyAction;

  /// No description provided for @favoritesCarsEmptyDescription.
  ///
  /// In kk, this message translates to:
  /// **'Ұнаған көліктерді кейін оларға тез оралу үшін сақтап қойыңыз'**
  String get favoritesCarsEmptyDescription;

  /// No description provided for @favoritesCarsEmptyTitle.
  ///
  /// In kk, this message translates to:
  /// **'Таңдаулы көліктер'**
  String get favoritesCarsEmptyTitle;

  /// No description provided for @favoritesPageTitle.
  ///
  /// In kk, this message translates to:
  /// **'Таңдаулылар'**
  String get favoritesPageTitle;

  /// No description provided for @favoritesPartsEmptyAction.
  ///
  /// In kk, this message translates to:
  /// **'Бөлшектерге өту'**
  String get favoritesPartsEmptyAction;

  /// No description provided for @favoritesPartsEmptyDescription.
  ///
  /// In kk, this message translates to:
  /// **'Қажетті бөлшектер мен сервистерді керек сәтте оңай табу үшін сақтап қойыңыз'**
  String get favoritesPartsEmptyDescription;

  /// No description provided for @favoritesPartsEmptyTitle.
  ///
  /// In kk, this message translates to:
  /// **'Таңдаулы бөлшектер мен СТО'**
  String get favoritesPartsEmptyTitle;

  /// No description provided for @favoritesServicesEmptyAction.
  ///
  /// In kk, this message translates to:
  /// **'Қызметтерге өту'**
  String get favoritesServicesEmptyAction;

  /// No description provided for @favoritesServicesEmptyDescription.
  ///
  /// In kk, this message translates to:
  /// **'Қажет болғанда тез хабарласу үшін тексерілген шеберлер мен қызметтерді таңдаулыға қосыңыз'**
  String get favoritesServicesEmptyDescription;

  /// No description provided for @favoritesServicesEmptyTitle.
  ///
  /// In kk, this message translates to:
  /// **'Таңдаулы қызметтер мен шеберлер'**
  String get favoritesServicesEmptyTitle;

  /// No description provided for @feedback.
  ///
  /// In kk, this message translates to:
  /// **'Пікір'**
  String get feedback;

  /// No description provided for @feedbackLittle.
  ///
  /// In kk, this message translates to:
  /// **'пікір'**
  String get feedbackLittle;

  /// No description provided for @female.
  ///
  /// In kk, this message translates to:
  /// **'Әйел'**
  String get female;

  /// No description provided for @filter.
  ///
  /// In kk, this message translates to:
  /// **'Сүзгі'**
  String get filter;

  /// No description provided for @findHerHereAndShareYourImpressions.
  ///
  /// In kk, this message translates to:
  /// **'Оны осы жерден тауып, өз әсерлеріңізбен бөлісіңіз'**
  String get findHerHereAndShareYourImpressions;

  /// No description provided for @findTheSectionYouNeed.
  ///
  /// In kk, this message translates to:
  /// **'Қажетті бөлімді табыңыз'**
  String get findTheSectionYouNeed;

  /// No description provided for @forgotPass.
  ///
  /// In kk, this message translates to:
  /// **'Құпиясөзді ұмыту'**
  String get forgotPass;

  /// No description provided for @forgotYourPassword.
  ///
  /// In kk, this message translates to:
  /// **'Құпия сөзді ұмыттыңыз ба?'**
  String get forgotYourPassword;

  /// No description provided for @foundedYear.
  ///
  /// In kk, this message translates to:
  /// **'Шығарылған жылы'**
  String get foundedYear;

  /// No description provided for @franchiseText1.
  ///
  /// In kk, this message translates to:
  /// **'Автокөліктерді бағалау – нарықта сұранысқа ие қызмет. Біздің бренд аясында өз кәсібіңізді ашып, тұрақты табыс табуға мүмкіндік ұсынамыз.'**
  String get franchiseText1;

  /// No description provided for @franchiseText2.
  ///
  /// In kk, this message translates to:
  /// **'Сіз не аласыз '**
  String get franchiseText2;

  /// No description provided for @franchiseText3.
  ///
  /// In kk, this message translates to:
  /// **'Бағалаудың автоматтандырылған жүйесі бар дайын IT-платформа'**
  String get franchiseText3;

  /// No description provided for @franchiseText4.
  ///
  /// In kk, this message translates to:
  /// **'Істі бастау мен жүргізудің барлық кезеңінде қолдау'**
  String get franchiseText4;

  /// No description provided for @franchiseText5.
  ///
  /// In kk, this message translates to:
  /// **'Оқыту және тексерілген бизнес-үдерістерге қолжетімділік'**
  String get franchiseText5;

  /// No description provided for @franchiseText6.
  ///
  /// In kk, this message translates to:
  /// **'Маркетингтік қолдау және клиент тартуға жәрдем'**
  String get franchiseText6;

  /// No description provided for @franchiseText7.
  ///
  /// In kk, this message translates to:
  /// **'Іске қосу кез келген өңірде мүмкін. Инвестициялар минималды, ал қызметке сұраныс артып келеді.'**
  String get franchiseText7;

  /// No description provided for @free.
  ///
  /// In kk, this message translates to:
  /// **'Тегін'**
  String get free;

  /// No description provided for @freeDamageAssessmentAutoTitle.
  ///
  /// In kk, this message translates to:
  /// **'Көлік зақымын тегін бағалау'**
  String get freeDamageAssessmentAutoTitle;

  /// No description provided for @freeDamageAssessmentTitle.
  ///
  /// In kk, this message translates to:
  /// **'Зақымды тегін бағалау'**
  String get freeDamageAssessmentTitle;

  /// No description provided for @front.
  ///
  /// In kk, this message translates to:
  /// **'Алдыңғы'**
  String get front;

  /// No description provided for @frontLeftCorner.
  ///
  /// In kk, this message translates to:
  /// **'Алдыңғы сол жақ бұрыш'**
  String get frontLeftCorner;

  /// No description provided for @frontRightCorner.
  ///
  /// In kk, this message translates to:
  /// **'Алдыңғы оң жақ бұрыш'**
  String get frontRightCorner;

  /// No description provided for @fullname.
  ///
  /// In kk, this message translates to:
  /// **'Толық аты-жөні'**
  String get fullname;

  /// No description provided for @gallery.
  ///
  /// In kk, this message translates to:
  /// **'Галерея'**
  String get gallery;

  /// No description provided for @getAccess.
  ///
  /// In kk, this message translates to:
  /// **'Жылдам баға алыңыз!'**
  String get getAccess;

  /// No description provided for @getAccurateAssessment.
  ///
  /// In kk, this message translates to:
  /// **'Нақты бағалау алу'**
  String get getAccurateAssessment;

  /// No description provided for @getCode.
  ///
  /// In kk, this message translates to:
  /// **'Кодты алу'**
  String get getCode;

  /// No description provided for @getSupport.
  ///
  /// In kk, this message translates to:
  /// **'Қолдау алу'**
  String get getSupport;

  /// No description provided for @goTo.
  ///
  /// In kk, this message translates to:
  /// **'Өту'**
  String get goTo;

  /// No description provided for @gosNumber.
  ///
  /// In kk, this message translates to:
  /// **'Мемлекеттік нөмір'**
  String get gosNumber;

  /// No description provided for @haveCASCO.
  ///
  /// In kk, this message translates to:
  /// **'КАСКО сақтандыруы бар'**
  String get haveCASCO;

  /// No description provided for @helpDesk.
  ///
  /// In kk, this message translates to:
  /// **'Анықтама үстелі'**
  String get helpDesk;

  /// No description provided for @hereEmpty.
  ///
  /// In kk, this message translates to:
  /// **'Әзірге бұл жерде бос'**
  String get hereEmpty;

  /// No description provided for @highRating.
  ///
  /// In kk, this message translates to:
  /// **'Жоғары рейтинг'**
  String get highRating;

  /// No description provided for @historyOfMyReview.
  ///
  /// In kk, this message translates to:
  /// **'Менің шолуларымның тарихы'**
  String get historyOfMyReview;

  /// No description provided for @historyPayment.
  ///
  /// In kk, this message translates to:
  /// **'Төлем тарихы'**
  String get historyPayment;

  /// No description provided for @how_is_your_rating_calculated.
  ///
  /// In kk, this message translates to:
  /// **'Сіздің рейтингіңіз қалай есептеледі?'**
  String get how_is_your_rating_calculated;

  /// No description provided for @iWant.
  ///
  /// In kk, this message translates to:
  /// **'қалаймын'**
  String get iWant;

  /// No description provided for @icAmount.
  ///
  /// In kk, this message translates to:
  /// **'СК сомасы'**
  String get icAmount;

  /// No description provided for @idCard.
  ///
  /// In kk, this message translates to:
  /// **'Жүргізушінің жеке куәлігі'**
  String get idCard;

  /// No description provided for @idCardOwn.
  ///
  /// In kk, this message translates to:
  /// **' Жеке куәлік'**
  String get idCardOwn;

  /// No description provided for @id_card_constant.
  ///
  /// In kk, this message translates to:
  /// **'Жеке құжат'**
  String get id_card_constant;

  /// No description provided for @if_you_have_any_questions_or_suggestions.
  ///
  /// In kk, this message translates to:
  /// **'Егер сізде сұрақтар немесе ұсыныстар болса, біздің қолдау тобымызға хабарласыңыз-біз әрқашан көмектесуге қуаныштымыз!'**
  String get if_you_have_any_questions_or_suggestions;

  /// No description provided for @if_you_havenot_found.
  ///
  /// In kk, this message translates to:
  /// **'Егер сіз дұрысын таппаған болсаңыз, оны каталогқа қосып, пікір қалдыра аласыз.'**
  String get if_you_havenot_found;

  /// No description provided for @image.
  ///
  /// In kk, this message translates to:
  /// **'Сурет'**
  String get image;

  /// No description provided for @inFrontOfDoc.
  ///
  /// In kk, this message translates to:
  /// **'Құжаттың алдыңғы беті'**
  String get inFrontOfDoc;

  /// No description provided for @inPdfOrPhotoFormatNoMoreThan10Mb.
  ///
  /// In kk, this message translates to:
  /// **'PDF немесе фото форматында\n(10МБ-тан аспауы керек)'**
  String get inPdfOrPhotoFormatNoMoreThan10Mb;

  /// No description provided for @inDevelopment.
  ///
  /// In kk, this message translates to:
  /// **'Әзірленуде'**
  String get inDevelopment;

  /// No description provided for @inProcess.
  ///
  /// In kk, this message translates to:
  /// **'Процесінде'**
  String get inProcess;

  /// No description provided for @incorrectNumberFormat.
  ///
  /// In kk, this message translates to:
  /// **'Қате нөмір пішімі'**
  String get incorrectNumberFormat;

  /// No description provided for @independentAccidentAssessment.
  ///
  /// In kk, this message translates to:
  /// **'Жол-көлік оқиғасы бойынша тәуелсіз бағалау '**
  String get independentAccidentAssessment;

  /// No description provided for @independentAssessment.
  ///
  /// In kk, this message translates to:
  /// **'Тәуелсіз бағалау'**
  String get independentAssessment;

  /// No description provided for @independentExpertiseAssessment.
  ///
  /// In kk, this message translates to:
  /// **'Тәуелсіз сараптама бағасы'**
  String get independentExpertiseAssessment;

  /// No description provided for @individualIdentificationNumber.
  ///
  /// In kk, this message translates to:
  /// **'Жеке сәйкестендіру нөмірі (ЖСН)'**
  String get individualIdentificationNumber;

  /// No description provided for @infoAboutYou.
  ///
  /// In kk, this message translates to:
  /// **'Өзіңіз туралы'**
  String get infoAboutYou;

  /// No description provided for @infoCar.
  ///
  /// In kk, this message translates to:
  /// **'Автокөлік туралы мәліметтер'**
  String get infoCar;

  /// No description provided for @inspectionDate.
  ///
  /// In kk, this message translates to:
  /// **'Тексеру күні'**
  String get inspectionDate;

  /// No description provided for @insuranceAccident.
  ///
  /// In kk, this message translates to:
  /// **'Жазатайым оқиғалардан сақтандыру'**
  String get insuranceAccident;

  /// No description provided for @insuranceApplicationSuccessSubtitle.
  ///
  /// In kk, this message translates to:
  /// **'Біздің менеджер сізбен\n1 жұмыс күні ішінде байланысады'**
  String get insuranceApplicationSuccessSubtitle;

  /// No description provided for @insuranceApplicationSuccessTitle.
  ///
  /// In kk, this message translates to:
  /// **'Өтінім сәтті қабылданды'**
  String get insuranceApplicationSuccessTitle;

  /// No description provided for @insuranceCargo.
  ///
  /// In kk, this message translates to:
  /// **'Жүктерді сақтандыру'**
  String get insuranceCargo;

  /// No description provided for @insuranceCascoFull.
  ///
  /// In kk, this message translates to:
  /// **'КАСКО толық'**
  String get insuranceCascoFull;

  /// No description provided for @insuranceCompany.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыру компаниясы'**
  String get insuranceCompany;

  /// No description provided for @insuranceCompanyAssessment.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыру компаниясының бағалауы (бар болса)'**
  String get insuranceCompanyAssessment;

  /// No description provided for @insuranceCompanyName.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыру компаниясының атауы'**
  String get insuranceCompanyName;

  /// No description provided for @insuranceKaskoTitle.
  ///
  /// In kk, this message translates to:
  /// **'КАСКО'**
  String get insuranceKaskoTitle;

  /// No description provided for @insuranceOgpoTitle.
  ///
  /// In kk, this message translates to:
  /// **'ОГПО'**
  String get insuranceOgpoTitle;

  /// No description provided for @insuranceOgpoVts.
  ///
  /// In kk, this message translates to:
  /// **'ОСГПО ВТС'**
  String get insuranceOgpoVts;

  /// No description provided for @insurancePassengers.
  ///
  /// In kk, this message translates to:
  /// **'Жолаушыларға арналған ДГПО'**
  String get insurancePassengers;

  /// No description provided for @insurancePolicyCardButton.
  ///
  /// In kk, this message translates to:
  /// **'Сатып алу'**
  String get insurancePolicyCardButton;

  /// No description provided for @insurancePolicyCardSubtitle.
  ///
  /// In kk, this message translates to:
  /// **'ОГПО, КАСКО'**
  String get insurancePolicyCardSubtitle;

  /// No description provided for @insurancePolicyCardTitle.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыру полисі'**
  String get insurancePolicyCardTitle;

  /// No description provided for @insurancePolicyKaskoButton.
  ///
  /// In kk, this message translates to:
  /// **'Сатып алу'**
  String get insurancePolicyKaskoButton;

  /// No description provided for @insurancePolicyKaskoDescription.
  ///
  /// In kk, this message translates to:
  /// **'ЖКО, ұрлық, зақымдану және табиғи апаттар кезінде көлігіңізге келген шығынды өтеу, барлық жағдайлардан қорғау'**
  String get insurancePolicyKaskoDescription;

  /// No description provided for @insurancePolicyKaskoSubtitle.
  ///
  /// In kk, this message translates to:
  /// **'Көлігіңізді қорғау'**
  String get insurancePolicyKaskoSubtitle;

  /// No description provided for @insurancePolicyKaskoTitle.
  ///
  /// In kk, this message translates to:
  /// **'КАСКО'**
  String get insurancePolicyKaskoTitle;

  /// No description provided for @insurancePolicyOgpoButton.
  ///
  /// In kk, this message translates to:
  /// **'Рәсімдеу'**
  String get insurancePolicyOgpoButton;

  /// No description provided for @insurancePolicyOgpoCoverage.
  ///
  /// In kk, this message translates to:
  /// **'600 АЕК-ке дейін жабу'**
  String get insurancePolicyOgpoCoverage;

  /// No description provided for @insurancePolicyOgpoDescription.
  ///
  /// In kk, this message translates to:
  /// **'Егер сіз ЖКО-ға кінәлі болсаңыз, сақтандыру зардап шеккен тараптың шығынын өтейді.'**
  String get insurancePolicyOgpoDescription;

  /// No description provided for @insurancePolicyOgpoKazakhstan.
  ///
  /// In kk, this message translates to:
  /// **'Қазақстан бойынша қолданылады'**
  String get insurancePolicyOgpoKazakhstan;

  /// No description provided for @insurancePolicyOgpoSubtitle.
  ///
  /// In kk, this message translates to:
  /// **'Заң бойынша базалық қорғау'**
  String get insurancePolicyOgpoSubtitle;

  /// No description provided for @insurancePolicyOgpoTitle.
  ///
  /// In kk, this message translates to:
  /// **'ОГПО ВТС'**
  String get insurancePolicyOgpoTitle;

  /// No description provided for @insurancePolicyPageTitle.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыру полисі'**
  String get insurancePolicyPageTitle;

  /// No description provided for @insurancePolicyAgreeIssue.
  ///
  /// In kk, this message translates to:
  /// **'Келісемін, полисті рәсімдеу'**
  String get insurancePolicyAgreeIssue;

  /// No description provided for @insurancePolicyCost.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыру полисінің құны'**
  String get insurancePolicyCost;

  /// No description provided for @insurancePolicyCreateNewRequest.
  ///
  /// In kk, this message translates to:
  /// **'Жаңа өтінім беру'**
  String get insurancePolicyCreateNewRequest;

  /// No description provided for @insurancePolicyDeleteCurrent.
  ///
  /// In kk, this message translates to:
  /// **'Ағымдағы сақтандыруды жою'**
  String get insurancePolicyDeleteCurrent;

  /// No description provided for @insurancePolicyFinalDocument.
  ///
  /// In kk, this message translates to:
  /// **'Дайын полис'**
  String get insurancePolicyFinalDocument;

  /// No description provided for @insurancePolicyOpenFinalDocument.
  ///
  /// In kk, this message translates to:
  /// **'Құжатты ашу'**
  String get insurancePolicyOpenFinalDocument;

  /// No description provided for @insurancePolicyOpenPaymentInstruction.
  ///
  /// In kk, this message translates to:
  /// **'Төлем нұсқаулығын ашу'**
  String get insurancePolicyOpenPaymentInstruction;

  /// No description provided for @insurancePolicyPaymentInstruction.
  ///
  /// In kk, this message translates to:
  /// **'Төлем туралы нұсқаулық'**
  String get insurancePolicyPaymentInstruction;

  /// No description provided for @insurancePolicyPaymentActions.
  ///
  /// In kk, this message translates to:
  /// **'Полис төлемі'**
  String get insurancePolicyPaymentActions;

  /// No description provided for @insurancePolicyPaymentReceipt.
  ///
  /// In kk, this message translates to:
  /// **'Төлем түбіртегі'**
  String get insurancePolicyPaymentReceipt;

  /// No description provided for @insurancePolicyRejectIssue.
  ///
  /// In kk, this message translates to:
  /// **'Рәсімдеуден бас тарту'**
  String get insurancePolicyRejectIssue;

  /// No description provided for @insurancePolicyReissue.
  ///
  /// In kk, this message translates to:
  /// **'Жаңа өтінім жасау'**
  String get insurancePolicyReissue;

  /// No description provided for @insurancePolicySentDocuments.
  ///
  /// In kk, this message translates to:
  /// **'Жіберілген құжаттар'**
  String get insurancePolicySentDocuments;

  /// No description provided for @insurancePolicyType.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыру түрі'**
  String get insurancePolicyType;

  /// No description provided for @insurancePolicyUploadPaymentReceipt.
  ///
  /// In kk, this message translates to:
  /// **'Төлем растамасын жүктеу'**
  String get insurancePolicyUploadPaymentReceipt;

  /// No description provided for @insuranceServiceChatOpenError.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыру чатын ашу мүмкін болмады'**
  String get insuranceServiceChatOpenError;

  /// No description provided for @insuranceServiceChatTitle.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыруды рәсімдеу'**
  String get insuranceServiceChatTitle;

  /// No description provided for @insuranceStatusCompletedDescription.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыру полисін рәсімдеу сәтті аяқталды. Полис осы өтінімге тіркелді және қарауға, жүктеуге немесе басып шығаруға қолжетімді.'**
  String get insuranceStatusCompletedDescription;

  /// No description provided for @insuranceStatusDataVerificationDescription.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыру компаниясына жібермес бұрын ұсынылған деректердің дұрыстығын тексеріп жатырмыз.'**
  String get insuranceStatusDataVerificationDescription;

  /// No description provided for @insuranceStatusNewDescription.
  ///
  /// In kk, this message translates to:
  /// **'Сіздің өтініміңіз сәтті қабылданып, Автокомек жүйесінде тіркелді.'**
  String get insuranceStatusNewDescription;

  /// No description provided for @insuranceStatusPaymentVerificationDescription.
  ///
  /// In kk, this message translates to:
  /// **'Төлем растамасы алынды. Біз төлемнің түсуін тексеріп, сақтандыру полисін рәсімдеуді аяқтаймыз.'**
  String get insuranceStatusPaymentVerificationDescription;

  /// No description provided for @insuranceStatusSentToInsuranceDescription.
  ///
  /// In kk, this message translates to:
  /// **'Өтінім сақтандыру компаниясына жіберілді. Сақтандыру полисінің құнын есептеуді күтеміз.'**
  String get insuranceStatusSentToInsuranceDescription;

  /// No description provided for @insuranceStatusWaitingForPaymentDescription.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыру полисінің құны есептелді. Рәсімдеуді жалғастыру үшін төлем жасап, қосымша арқылы растау жіберу қажет. Төлем расталғаннан кейін рәсімдеуді аяқтаймыз.'**
  String get insuranceStatusWaitingForPaymentDescription;

  /// No description provided for @interior.
  ///
  /// In kk, this message translates to:
  /// **'Салон'**
  String get interior;

  /// No description provided for @isDriver.
  ///
  /// In kk, this message translates to:
  /// **'Сіз рульде болдыңыз'**
  String get isDriver;

  /// No description provided for @isHaveCASCO.
  ///
  /// In kk, this message translates to:
  /// **'Сізде КАСКО сақтандыруы бар ма'**
  String get isHaveCASCO;

  /// No description provided for @isOwner.
  ///
  /// In kk, this message translates to:
  /// **'Сіз иесіз'**
  String get isOwner;

  /// No description provided for @joinInSecond.
  ///
  /// In kk, this message translates to:
  /// **'Секунд ішінде қосылыңыз, мұнда көптеген пайдалы заттар бар!'**
  String get joinInSecond;

  /// No description provided for @kazakh.
  ///
  /// In kk, this message translates to:
  /// **'Қазақша'**
  String get kazakh;

  /// No description provided for @language.
  ///
  /// In kk, this message translates to:
  /// **'Тіл'**
  String get language;

  /// No description provided for @leaveFeedback.
  ///
  /// In kk, this message translates to:
  /// **'Пікір қалдыру'**
  String get leaveFeedback;

  /// No description provided for @leave_a_review.
  ///
  /// In kk, this message translates to:
  /// **'Пікір қалдыру'**
  String get leave_a_review;

  /// No description provided for @leftSide.
  ///
  /// In kk, this message translates to:
  /// **'Сол жақ бөлік'**
  String get leftSide;

  /// No description provided for @licensePlateNumberOfOffender.
  ///
  /// In kk, this message translates to:
  /// **'Қателіктің (жауаптының) мемлекеттік нөмірі'**
  String get licensePlateNumberOfOffender;

  /// No description provided for @linkTotheWebsite.
  ///
  /// In kk, this message translates to:
  /// **'Сайтқа сілтеме'**
  String get linkTotheWebsite;

  /// No description provided for @listingOrdersCount.
  ///
  /// In kk, this message translates to:
  /// **'Тапсырыстар: {count}'**
  String listingOrdersCount(int count);

  /// No description provided for @log_out_of_your_account.
  ///
  /// In kk, this message translates to:
  /// **'Аккаунттан шығу керек пе?'**
  String get log_out_of_your_account;

  /// No description provided for @login.
  ///
  /// In kk, this message translates to:
  /// **'Кіру'**
  String get login;

  /// No description provided for @loginToAcc.
  ///
  /// In kk, this message translates to:
  /// **'Аккаунтқа кіру'**
  String get loginToAcc;

  /// No description provided for @logout.
  ///
  /// In kk, this message translates to:
  /// **'Аккаунттан шығу'**
  String get logout;

  /// No description provided for @logoutOfAccount.
  ///
  /// In kk, this message translates to:
  /// **'Аккаунттан шығу'**
  String get logoutOfAccount;

  /// No description provided for @lossOfMarketValueAssessmentTitle.
  ///
  /// In kk, this message translates to:
  /// **'Тауарлық құнды жоғалтуды бағалау'**
  String get lossOfMarketValueAssessmentTitle;

  /// No description provided for @main.
  ///
  /// In kk, this message translates to:
  /// **'Басты бет'**
  String get main;

  /// No description provided for @mainFeatures.
  ///
  /// In kk, this message translates to:
  /// **'Негізгі ерекшеліктері'**
  String get mainFeatures;

  /// No description provided for @mainFeatures1.
  ///
  /// In kk, this message translates to:
  /// **'ЖКО және сақтандырумен даулар болған жағдайда толық заңдық сүйемелдеу'**
  String get mainFeatures1;

  /// No description provided for @mainFeatures2.
  ///
  /// In kk, this message translates to:
  /// **'Залал көлемін анықтайтын тегін маман'**
  String get mainFeatures2;

  /// No description provided for @mainFeatures3.
  ///
  /// In kk, this message translates to:
  /// **'Мәселені бірінші кезекте қарастыру'**
  String get mainFeatures3;

  /// No description provided for @mainFeatures4.
  ///
  /// In kk, this message translates to:
  /// **'Жол полициясы және сақтандыру компанияларымен келіссөз жүргізуге көмек'**
  String get mainFeatures4;

  /// No description provided for @maintenance.
  ///
  /// In kk, this message translates to:
  /// **'Сүйемелдеу'**
  String get maintenance;

  /// No description provided for @maintenanceProcess.
  ///
  /// In kk, this message translates to:
  /// **'Процесті сүйемелдеу'**
  String get maintenanceProcess;

  /// No description provided for @male.
  ///
  /// In kk, this message translates to:
  /// **'Ер'**
  String get male;

  /// No description provided for @mark.
  ///
  /// In kk, this message translates to:
  /// **'Маркасы'**
  String get mark;

  /// No description provided for @marketAssessmentInfoMessage.
  ///
  /// In kk, this message translates to:
  /// **'Сертификатталған бағалаушыдан нарықтық бағалау құнын алыңыз'**
  String get marketAssessmentInfoMessage;

  /// No description provided for @marketValueAssessmentTitle.
  ///
  /// In kk, this message translates to:
  /// **'Нарықтық құнын бағалау'**
  String get marketValueAssessmentTitle;

  /// No description provided for @maxFiveImages.
  ///
  /// In kk, this message translates to:
  /// **'5 файлдан артық таңдауға болмайды'**
  String get maxFiveImages;

  /// No description provided for @medicalCertificate.
  ///
  /// In kk, this message translates to:
  /// **'Медициналық анықтама'**
  String get medicalCertificate;

  /// No description provided for @messageSentToThisNumber.
  ///
  /// In kk, this message translates to:
  /// **'Бұл нөмірге хабарлама жіберілді'**
  String get messageSentToThisNumber;

  /// No description provided for @mileage.
  ///
  /// In kk, this message translates to:
  /// **'Жүріс қашықтығы'**
  String get mileage;

  /// No description provided for @minFiveWords.
  ///
  /// In kk, this message translates to:
  /// **'Кемінде 15 сөз қажет'**
  String get minFiveWords;

  /// No description provided for @minimum_words.
  ///
  /// In kk, this message translates to:
  /// **'Кем дегенде 15 сөз қажет'**
  String get minimum_words;

  /// No description provided for @model.
  ///
  /// In kk, this message translates to:
  /// **'Моделі'**
  String get model;

  /// No description provided for @month.
  ///
  /// In kk, this message translates to:
  /// **'ай'**
  String get month;

  /// No description provided for @monthOne.
  ///
  /// In kk, this message translates to:
  /// **'ай'**
  String get monthOne;

  /// No description provided for @more.
  ///
  /// In kk, this message translates to:
  /// **'Тағы'**
  String get more;

  /// No description provided for @myAccess.
  ///
  /// In kk, this message translates to:
  /// **'Менің бағаларым'**
  String get myAccess;

  /// No description provided for @myAds.
  ///
  /// In kk, this message translates to:
  /// **'Менің хабарландыруларым'**
  String get myAds;

  /// No description provided for @myCar.
  ///
  /// In kk, this message translates to:
  /// **'Менің көлігім'**
  String get myCar;

  /// No description provided for @myApplications.
  ///
  /// In kk, this message translates to:
  /// **'Менің өтініштерім'**
  String get myApplications;

  /// No description provided for @myInsurances.
  ///
  /// In kk, this message translates to:
  /// **'Менің сақтандыруларым'**
  String get myInsurances;

  /// No description provided for @name.
  ///
  /// In kk, this message translates to:
  /// **'Атауы'**
  String get name;

  /// No description provided for @nameOrCompany.
  ///
  /// In kk, this message translates to:
  /// **'Аты / Компания'**
  String get nameOrCompany;

  /// No description provided for @name_of_the_city.
  ///
  /// In kk, this message translates to:
  /// **'Қала атауы'**
  String get name_of_the_city;

  /// No description provided for @neAmount.
  ///
  /// In kk, this message translates to:
  /// **'НЭ сомасы'**
  String get neAmount;

  /// No description provided for @newOnesFirst.
  ///
  /// In kk, this message translates to:
  /// **'Алдымен жаңа'**
  String get newOnesFirst;

  /// No description provided for @newPassword.
  ///
  /// In kk, this message translates to:
  /// **'Жаңа құпиясөз'**
  String get newPassword;

  /// No description provided for @next.
  ///
  /// In kk, this message translates to:
  /// **'Келесі'**
  String get next;

  /// No description provided for @no.
  ///
  /// In kk, this message translates to:
  /// **'Жоқ'**
  String get no;

  /// No description provided for @noCar.
  ///
  /// In kk, this message translates to:
  /// **'Әзірге мұнда көлік жоқ'**
  String get noCar;

  /// No description provided for @noComment.
  ///
  /// In kk, this message translates to:
  /// **'Пікірлер жоқ'**
  String get noComment;

  /// No description provided for @noReviewsYet.
  ///
  /// In kk, this message translates to:
  /// **'Әзірге пікірлер жоқ па'**
  String get noReviewsYet;

  /// No description provided for @notification.
  ///
  /// In kk, this message translates to:
  /// **'Хабарламалар'**
  String get notification;

  /// No description provided for @notificationAssessment.
  ///
  /// In kk, this message translates to:
  /// **'Бағалау'**
  String get notificationAssessment;

  /// No description provided for @notificationCars.
  ///
  /// In kk, this message translates to:
  /// **'Көліктер'**
  String get notificationCars;

  /// No description provided for @notificationSubmissionToIC.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыру компаниясына (СК) хабарлама жіберу'**
  String get notificationSubmissionToIC;

  /// No description provided for @officialAssessmentInfoMessage.
  ///
  /// In kk, this message translates to:
  /// **'Өтінім қалдырғаннан кейін маман сізбен байланысып, тексеру уақыты мен орнын келіседі. Бағалаушы барып, көліктің барлық зақымдарын тіркейді. Тексеру негізінде сарапшының ресми есебі дайындалады.'**
  String get officialAssessmentInfoMessage;

  /// No description provided for @okUppercase.
  ///
  /// In kk, this message translates to:
  /// **'OK'**
  String get okUppercase;

  /// No description provided for @oldOnesFirst.
  ///
  /// In kk, this message translates to:
  /// **'Алдымен ескі'**
  String get oldOnesFirst;

  /// No description provided for @ombudsmanCaseNumber.
  ///
  /// In kk, this message translates to:
  /// **'Омбудсмен ісінің нөмірі'**
  String get ombudsmanCaseNumber;

  /// No description provided for @oneTimeServices.
  ///
  /// In kk, this message translates to:
  /// **'Бір реттік сервистер'**
  String get oneTimeServices;

  /// No description provided for @oneYear.
  ///
  /// In kk, this message translates to:
  /// **'Жылдық'**
  String get oneYear;

  /// No description provided for @order.
  ///
  /// In kk, this message translates to:
  /// **'Тапсырыс беру'**
  String get order;

  /// No description provided for @owner.
  ///
  /// In kk, this message translates to:
  /// **'Меншік иесі'**
  String get owner;

  /// No description provided for @ownerFullName.
  ///
  /// In kk, this message translates to:
  /// **'Иесінің толық аты-жөні'**
  String get ownerFullName;

  /// No description provided for @paid.
  ///
  /// In kk, this message translates to:
  /// **'Төленді'**
  String get paid;

  /// No description provided for @paidDamageAssessmentPrice.
  ///
  /// In kk, this message translates to:
  /// **'60 000 ₸'**
  String get paidDamageAssessmentPrice;

  /// No description provided for @password.
  ///
  /// In kk, this message translates to:
  /// **'Құпиясөз'**
  String get password;

  /// No description provided for @passwordRecovery.
  ///
  /// In kk, this message translates to:
  /// **'Құпия сөзді қалпына келтіру'**
  String get passwordRecovery;

  /// No description provided for @passwordRecoveryText.
  ///
  /// In kk, this message translates to:
  /// **'Құпия сөзді қалпына келтіру үшін жаңа құпия сөз жасаңыз.'**
  String get passwordRecoveryText;

  /// No description provided for @pay.
  ///
  /// In kk, this message translates to:
  /// **'Төлеу'**
  String get pay;

  /// No description provided for @payment.
  ///
  /// In kk, this message translates to:
  /// **'ТӨЛЕМ'**
  String get payment;

  /// No description provided for @paymentByBankCard.
  ///
  /// In kk, this message translates to:
  /// **'Банктік картамен төлем'**
  String get paymentByBankCard;

  /// No description provided for @paymentForAssessment.
  ///
  /// In kk, this message translates to:
  /// **'Бағалау үшін төлем'**
  String get paymentForAssessment;

  /// No description provided for @paymentHistory.
  ///
  /// In kk, this message translates to:
  /// **'Төлемдер тарихы'**
  String get paymentHistory;

  /// No description provided for @paymentReceipt.
  ///
  /// In kk, this message translates to:
  /// **'Төлемді алу'**
  String get paymentReceipt;

  /// No description provided for @phoneNumber.
  ///
  /// In kk, this message translates to:
  /// **'Телефон нөмірі'**
  String get phoneNumber;

  /// No description provided for @photoDamageAssessmentInfoMessage.
  ///
  /// In kk, this message translates to:
  /// **'Фотосуреттер бойынша зақымның шамамен сомасын есептеңіз. Нәтиже ақпараттық сипатта болады және ресми қорытынды болып саналмайды.'**
  String get photoDamageAssessmentInfoMessage;

  /// No description provided for @photos.
  ///
  /// In kk, this message translates to:
  /// **'Суреттер'**
  String get photos;

  /// No description provided for @photosRequiredToFill.
  ///
  /// In kk, this message translates to:
  /// **'Фотосуреттерді міндетті түрде жүктеу керек'**
  String get photosRequiredToFill;

  /// No description provided for @placeAdvertisement.
  ///
  /// In kk, this message translates to:
  /// **'Жарнама орналастыру'**
  String get placeAdvertisement;

  /// No description provided for @placeAdvertisementInfoMessage.
  ///
  /// In kk, this message translates to:
  /// **'Автокомекке жарнама орналастырыңыз\nКлиенттерді қосымшадан тікелей алыңыз'**
  String get placeAdvertisementInfoMessage;

  /// No description provided for @placeCrash.
  ///
  /// In kk, this message translates to:
  /// **'Оқиға орны'**
  String get placeCrash;

  /// No description provided for @placementPeriod.
  ///
  /// In kk, this message translates to:
  /// **'Орналастыру мерзімі'**
  String get placementPeriod;

  /// No description provided for @pleaseDescribeWhatIsWrongWithTheReviewSoThatWeCanDealWithFaster.
  ///
  /// In kk, this message translates to:
  /// **'Кері байланыс кезінде не дұрыс емес екенін сипаттаңыз, сонда біз оны тезірек шеше аламыз'**
  String get pleaseDescribeWhatIsWrongWithTheReviewSoThatWeCanDealWithFaster;

  /// No description provided for @popular_reviews.
  ///
  /// In kk, this message translates to:
  /// **'Танымал пікірлер'**
  String get popular_reviews;

  /// No description provided for @popularity_bonus.
  ///
  /// In kk, this message translates to:
  /// **'Танымалдық бонусы:\n - 50 + ұнату: әр ұнату + 0.2 қосады.\n - 100 + ұнату: әр ұнату + 0.3 қосады.'**
  String get popularity_bonus;

  /// No description provided for @preliminaryByPhoto.
  ///
  /// In kk, this message translates to:
  /// **'Фото бойынша алдын ала'**
  String get preliminaryByPhoto;

  /// No description provided for @premiumSubscription.
  ///
  /// In kk, this message translates to:
  /// **'Премиум жазылым'**
  String get premiumSubscription;

  /// No description provided for @processDate.
  ///
  /// In kk, this message translates to:
  /// **'Үдеріс күні'**
  String get processDate;

  /// No description provided for @profile.
  ///
  /// In kk, this message translates to:
  /// **'Профиль'**
  String get profile;

  /// No description provided for @promoLinkWillBeAvailableSoon.
  ///
  /// In kk, this message translates to:
  /// **'Сілтеме жақында қолжетімді болады'**
  String get promoLinkWillBeAvailableSoon;

  /// No description provided for @promoMockAuthor.
  ///
  /// In kk, this message translates to:
  /// **'Аты Тегі'**
  String get promoMockAuthor;

  /// No description provided for @promoMockDescription.
  ///
  /// In kk, this message translates to:
  /// **'Автокомек — автокөлік иелеріне бағалау, қызмет көрсету және көлікті сүйемелдеу мәселелерін жылдам әрі ыңғайлы шешуге көмектесетін заманауи сервис.\n\nАвтокомек арқылы сіз бірнеше минут ішінде тексерілген деректер мен ыңғайлы цифрлық құралдарға сүйене отырып, көлігіңіздің нақты нарықтық құнын біле аласыз.'**
  String get promoMockDescription;

  /// No description provided for @promoMockTitle.
  ///
  /// In kk, this message translates to:
  /// **'Амортизаторларды қашан ауыстыру керек ?'**
  String get promoMockTitle;

  /// No description provided for @proxyDocument.
  ///
  /// In kk, this message translates to:
  /// **'Сенімхат'**
  String get proxyDocument;

  /// No description provided for @proxyTemplateDescription.
  ///
  /// In kk, this message translates to:
  /// **'Жұмысты жалғастыру үшін көлік иесінен сенімхат жүктеңіз. Оны кез келген нотариустан төмендегі үлгі бойынша рәсімдей аласыз. Рәсімдегеннен кейін құжатты жеке кабинетке жүктеңіз'**
  String get proxyTemplateDescription;

  /// No description provided for @proxyTemplateSize.
  ///
  /// In kk, this message translates to:
  /// **'5.6 МБ'**
  String get proxyTemplateSize;

  /// No description provided for @proxyTemplateTitle.
  ///
  /// In kk, this message translates to:
  /// **'Сенімхат үлгісі'**
  String get proxyTemplateTitle;

  /// No description provided for @pullDownToRefresh.
  ///
  /// In kk, this message translates to:
  /// **'Жаңарту үшін, төмен қарай тартыңыз'**
  String get pullDownToRefresh;

  /// No description provided for @quantity.
  ///
  /// In kk, this message translates to:
  /// **'Саны'**
  String get quantity;

  /// No description provided for @questionAnswer.
  ///
  /// In kk, this message translates to:
  /// **'Сұрақ мен жауап'**
  String get questionAnswer;

  /// No description provided for @rateThisPlace.
  ///
  /// In kk, this message translates to:
  /// **'Осы жерді бағалаңыз'**
  String get rateThisPlace;

  /// No description provided for @rate_this_place.
  ///
  /// In kk, this message translates to:
  /// **'Бұл жерді бағалаңыз'**
  String get rate_this_place;

  /// No description provided for @rate_this_place_to_keep_a_review.
  ///
  /// In kk, this message translates to:
  /// **'Пікірді сақтау үшін осы орынды бағалаңыз.'**
  String get rate_this_place_to_keep_a_review;

  /// No description provided for @rating.
  ///
  /// In kk, this message translates to:
  /// **'Рейтинг'**
  String get rating;

  /// No description provided for @ratings_and_reviews.
  ///
  /// In kk, this message translates to:
  /// **'Бағалау және пікірлер'**
  String get ratings_and_reviews;

  /// No description provided for @read_all.
  ///
  /// In kk, this message translates to:
  /// **'БАРЛЫҒЫН ОҚЫҢЫЗ'**
  String get read_all;

  /// No description provided for @read_the_entire_review.
  ///
  /// In kk, this message translates to:
  /// **'Толық пікірді оқыңыз'**
  String get read_the_entire_review;

  /// No description provided for @readyBusiness.
  ///
  /// In kk, this message translates to:
  /// **'Сіздің дайын бизнесіңіз'**
  String get readyBusiness;

  /// No description provided for @readyToHelp.
  ///
  /// In kk, this message translates to:
  /// **'Сізге көмектесуге дайынбыз'**
  String get readyToHelp;

  /// No description provided for @rearAndCarNumber.
  ///
  /// In kk, this message translates to:
  /// **'Артқы жағы және көлік нөмірі'**
  String get rearAndCarNumber;

  /// No description provided for @rearLeftCorner.
  ///
  /// In kk, this message translates to:
  /// **'Артқы сол жақ бұрыш'**
  String get rearLeftCorner;

  /// No description provided for @rearRightCorner.
  ///
  /// In kk, this message translates to:
  /// **'Артқы оң жақ бұрыш'**
  String get rearRightCorner;

  /// No description provided for @registerAccident.
  ///
  /// In kk, this message translates to:
  /// **'ЖКО рәсімдеу'**
  String get registerAccident;

  /// No description provided for @registration.
  ///
  /// In kk, this message translates to:
  /// **'Тіркелу'**
  String get registration;

  /// No description provided for @registrationInfo.
  ///
  /// In kk, this message translates to:
  /// **'Тіркелу қосымшаның барлық мүмкіндіктеріне қолжетімділікті ашады!'**
  String get registrationInfo;

  /// No description provided for @repeatPassword.
  ///
  /// In kk, this message translates to:
  /// **'Құпия сөзді қайталаңыз'**
  String get repeatPassword;

  /// No description provided for @repeatPasswordedit.
  ///
  /// In kk, this message translates to:
  /// **'Құпия сөзді қайталаңыз'**
  String get repeatPasswordedit;

  /// No description provided for @required_to_fill.
  ///
  /// In kk, this message translates to:
  /// **'Міндетті түрде толтырыңыз'**
  String get required_to_fill;

  /// No description provided for @retry.
  ///
  /// In kk, this message translates to:
  /// **'Қайталау'**
  String get retry;

  /// No description provided for @reviewResponse.
  ///
  /// In kk, this message translates to:
  /// **'Қарау бойынша жауап'**
  String get reviewResponse;

  /// No description provided for @reviewSubmission.
  ///
  /// In kk, this message translates to:
  /// **'Қарауды жіберу'**
  String get reviewSubmission;

  /// No description provided for @review_history.
  ///
  /// In kk, this message translates to:
  /// **'Пікірлер тарихы'**
  String get review_history;

  /// No description provided for @reviews.
  ///
  /// In kk, this message translates to:
  /// **'Пікірлер'**
  String get reviews;

  /// No description provided for @reviewsLittle.
  ///
  /// In kk, this message translates to:
  /// **'пікірлер'**
  String get reviewsLittle;

  /// No description provided for @rightSide.
  ///
  /// In kk, this message translates to:
  /// **'Оң жақ бөлік'**
  String get rightSide;

  /// No description provided for @runCar.
  ///
  /// In kk, this message translates to:
  /// **'Жүрісі'**
  String get runCar;

  /// No description provided for @russian.
  ///
  /// In kk, this message translates to:
  /// **'Орыс тілі'**
  String get russian;

  /// No description provided for @save.
  ///
  /// In kk, this message translates to:
  /// **'Сақтау'**
  String get save;

  /// No description provided for @saveCards.
  ///
  /// In kk, this message translates to:
  /// **'Сақталған карталар'**
  String get saveCards;

  /// No description provided for @savety_document_from_expert.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыру компаниясының залалды бағалауы немесе тәуелсіз сарапшының залалды бағалауы (бар болған жағдайда)'**
  String get savety_document_from_expert;

  /// No description provided for @search.
  ///
  /// In kk, this message translates to:
  /// **'Іздеу'**
  String get search;

  /// No description provided for @selectFileType.
  ///
  /// In kk, this message translates to:
  /// **'Файл түрін таңдаңыз'**
  String get selectFileType;

  /// No description provided for @selectFromGallery.
  ///
  /// In kk, this message translates to:
  /// **'Галереядан таңдаңыз'**
  String get selectFromGallery;

  /// No description provided for @selectPhoto.
  ///
  /// In kk, this message translates to:
  /// **'Фотосуретті таңдаңыз'**
  String get selectPhoto;

  /// No description provided for @select_a_branch.
  ///
  /// In kk, this message translates to:
  /// **'Филиалды таңдаңыз'**
  String get select_a_branch;

  /// No description provided for @select_a_country.
  ///
  /// In kk, this message translates to:
  /// **'Елді таңдаңыз'**
  String get select_a_country;

  /// No description provided for @select_a_language.
  ///
  /// In kk, this message translates to:
  /// **'Тілді таңдаңыз'**
  String get select_a_language;

  /// No description provided for @select_a_photo.
  ///
  /// In kk, this message translates to:
  /// **'Фотосуретті таңдаңыз'**
  String get select_a_photo;

  /// No description provided for @selectionApply.
  ///
  /// In kk, this message translates to:
  /// **'Қолдану'**
  String get selectionApply;

  /// No description provided for @send.
  ///
  /// In kk, this message translates to:
  /// **'Жіберу'**
  String get send;

  /// No description provided for @sendComplaint.
  ///
  /// In kk, this message translates to:
  /// **'Шағым жіберу'**
  String get sendComplaint;

  /// No description provided for @sendVia.
  ///
  /// In kk, this message translates to:
  /// **'Қайта жіберу'**
  String get sendVia;

  /// No description provided for @servicePrice.
  ///
  /// In kk, this message translates to:
  /// **'Қызмет құны'**
  String get servicePrice;

  /// No description provided for @servicesAndMastersBodyRepairDescription.
  ///
  /// In kk, this message translates to:
  /// **'ЖКО-дан кейінгі майысуларды, сызаттарды және зақымдарды жөндейміз. Көлігіңіздің сыртқы көрінісін қалпына келтіреміз.'**
  String get servicesAndMastersBodyRepairDescription;

  /// No description provided for @servicesAndMastersBodyRepairTitle.
  ///
  /// In kk, this message translates to:
  /// **'Кузов жөндеу'**
  String get servicesAndMastersBodyRepairTitle;

  /// No description provided for @servicesAndMastersDetailAboutMaster.
  ///
  /// In kk, this message translates to:
  /// **'Шебер туралы'**
  String get servicesAndMastersDetailAboutMaster;

  /// No description provided for @servicesAndMastersDetailClientReviews.
  ///
  /// In kk, this message translates to:
  /// **'Клиенттердің пікірлері'**
  String get servicesAndMastersDetailClientReviews;

  /// No description provided for @servicesAndMastersFilterAllRegions.
  ///
  /// In kk, this message translates to:
  /// **'Барлық аймақтар'**
  String get servicesAndMastersFilterAllRegions;

  /// No description provided for @servicesAndMastersFilterMasterAutoElectrician.
  ///
  /// In kk, this message translates to:
  /// **'Автоэлектрик'**
  String get servicesAndMastersFilterMasterAutoElectrician;

  /// No description provided for @servicesAndMastersFilterMasterBodyRepair.
  ///
  /// In kk, this message translates to:
  /// **'Кузов жөндеу және сырлау'**
  String get servicesAndMastersFilterMasterBodyRepair;

  /// No description provided for @servicesAndMastersFilterMasterComputerDiagnostics.
  ///
  /// In kk, this message translates to:
  /// **'Компьютерлік диагностика'**
  String get servicesAndMastersFilterMasterComputerDiagnostics;

  /// No description provided for @servicesAndMastersFilterMasterKppRepair.
  ///
  /// In kk, this message translates to:
  /// **'КПП жөндеу'**
  String get servicesAndMastersFilterMasterKppRepair;

  /// No description provided for @servicesAndMastersFilterMasterTireService.
  ///
  /// In kk, this message translates to:
  /// **'Шиномонтаж'**
  String get servicesAndMastersFilterMasterTireService;

  /// No description provided for @servicesAndMastersFilterMasterType.
  ///
  /// In kk, this message translates to:
  /// **'Шебер түрі'**
  String get servicesAndMastersFilterMasterType;

  /// No description provided for @servicesAndMastersFilterServiceCarWrapping.
  ///
  /// In kk, this message translates to:
  /// **'Көлікті қаптау'**
  String get servicesAndMastersFilterServiceCarWrapping;

  /// No description provided for @servicesAndMastersFilterServiceCargoTransportation.
  ///
  /// In kk, this message translates to:
  /// **'Жүк тасымалы'**
  String get servicesAndMastersFilterServiceCargoTransportation;

  /// No description provided for @servicesAndMastersFilterServiceChemicalCleaning.
  ///
  /// In kk, this message translates to:
  /// **'Химиялық тазалау, жылтырату'**
  String get servicesAndMastersFilterServiceChemicalCleaning;

  /// No description provided for @servicesAndMastersFilterServiceEvacuator.
  ///
  /// In kk, this message translates to:
  /// **'Эвакуатор қызметі'**
  String get servicesAndMastersFilterServiceEvacuator;

  /// No description provided for @servicesAndMastersFilterServiceOilReplacement.
  ///
  /// In kk, this message translates to:
  /// **'Май, сұйықтықтарды ауыстыру'**
  String get servicesAndMastersFilterServiceOilReplacement;

  /// No description provided for @servicesAndMastersFilterServiceType.
  ///
  /// In kk, this message translates to:
  /// **'Қызмет түрі'**
  String get servicesAndMastersFilterServiceType;

  /// No description provided for @servicesAndMastersFilterSortPopular.
  ///
  /// In kk, this message translates to:
  /// **'Алдымен танымалдары'**
  String get servicesAndMastersFilterSortPopular;

  /// No description provided for @servicesAndMastersMasters.
  ///
  /// In kk, this message translates to:
  /// **'Шеберлер'**
  String get servicesAndMastersMasters;

  /// No description provided for @servicesAndMastersOnSiteMasterDescription.
  ///
  /// In kk, this message translates to:
  /// **'Тексерілген мамандар келіп, көлігіңізді жөндеуге, диагностика жасауға және қызмет көрсетуге көмектеседі.'**
  String get servicesAndMastersOnSiteMasterDescription;

  /// No description provided for @servicesAndMastersOnSiteMasterTitle.
  ///
  /// In kk, this message translates to:
  /// **'Шебердің келуі'**
  String get servicesAndMastersOnSiteMasterTitle;

  /// No description provided for @servicesAndMastersOrdersLabel.
  ///
  /// In kk, this message translates to:
  /// **'256 тапсырыс'**
  String get servicesAndMastersOrdersLabel;

  /// No description provided for @servicesAndMastersPageTitle.
  ///
  /// In kk, this message translates to:
  /// **'Қызметтер мен шеберлер'**
  String get servicesAndMastersPageTitle;

  /// No description provided for @servicesAndMastersServices.
  ///
  /// In kk, this message translates to:
  /// **'Қызметтер'**
  String get servicesAndMastersServices;

  /// No description provided for @settingProcessDate.
  ///
  /// In kk, this message translates to:
  /// **'Үдеріс күнін белгілеу'**
  String get settingProcessDate;

  /// No description provided for @sex.
  ///
  /// In kk, this message translates to:
  /// **'Жынысы '**
  String get sex;

  /// No description provided for @shareAdvertisementText.
  ///
  /// In kk, this message translates to:
  /// **'Автокомектегі осы жарнаманы қараңыз'**
  String get shareAdvertisementText;

  /// No description provided for @signIn.
  ///
  /// In kk, this message translates to:
  /// **'Кіру'**
  String get signIn;

  /// No description provided for @signUp.
  ///
  /// In kk, this message translates to:
  /// **'Тіркелу'**
  String get signUp;

  /// No description provided for @simpleAlertText.
  ///
  /// In kk, this message translates to:
  /// **'Қызметімізді соңына дейін пайдаланбағаныңыз өкінішті. Сақтандыру компаниясының бағалауы көңіліңізден шықпаса, біз әрқашан көмектесуге дайынбыз.'**
  String get simpleAlertText;

  /// No description provided for @statusLabel.
  ///
  /// In kk, this message translates to:
  /// **'Мәртебе:'**
  String get statusLabel;

  /// No description provided for @sto.
  ///
  /// In kk, this message translates to:
  /// **'СТО'**
  String get sto;

  /// No description provided for @stoAccessories.
  ///
  /// In kk, this message translates to:
  /// **'Аксессуарлар'**
  String get stoAccessories;

  /// No description provided for @stoConsumables.
  ///
  /// In kk, this message translates to:
  /// **'Майлар мен шығын материалдары'**
  String get stoConsumables;

  /// No description provided for @stoAdDescriptionMock.
  ///
  /// In kk, this message translates to:
  /// **'Жапониядан келген қозғалтқыштар оаоовмвлтвотвмизмтт'**
  String get stoAdDescriptionMock;

  /// No description provided for @stoAdSpecsMock.
  ///
  /// In kk, this message translates to:
  /// **'21vdjicj, кроссовер,\nавтомат21vdjicj, кроссовер,\nавтомат21vdjicj, кроссовер,\nавтомат'**
  String get stoAdSpecsMock;

  /// No description provided for @stoAstana.
  ///
  /// In kk, this message translates to:
  /// **'Астана'**
  String get stoAstana;

  /// No description provided for @stoAutoParts.
  ///
  /// In kk, this message translates to:
  /// **'Автобөлшектер'**
  String get stoAutoParts;

  /// No description provided for @stoAvailability.
  ///
  /// In kk, this message translates to:
  /// **'Қолжетімділігі'**
  String get stoAvailability;

  /// No description provided for @stoBrand.
  ///
  /// In kk, this message translates to:
  /// **'Марка'**
  String get stoBrand;

  /// No description provided for @stoComplaintAcceptedLineOne.
  ///
  /// In kk, this message translates to:
  /// **'Сіздің шағымыңыз жіберілді және қазір'**
  String get stoComplaintAcceptedLineOne;

  /// No description provided for @stoComplaintAcceptedLineTwo.
  ///
  /// In kk, this message translates to:
  /// **'модератордың қарауында'**
  String get stoComplaintAcceptedLineTwo;

  /// No description provided for @stoComplaintAcceptedTitle.
  ///
  /// In kk, this message translates to:
  /// **'Шағым қабылданды'**
  String get stoComplaintAcceptedTitle;

  /// No description provided for @stoComplaintReasonDeniedPhone.
  ///
  /// In kk, this message translates to:
  /// **'Телефон арқылы хабарландыру бермегенін айтты'**
  String get stoComplaintReasonDeniedPhone;

  /// No description provided for @stoComplaintReasonDuplicate.
  ///
  /// In kk, this message translates to:
  /// **'Хабарландыру басқа хабарландыруды қайталайды'**
  String get stoComplaintReasonDuplicate;

  /// No description provided for @stoComplaintReasonForeignPhotos.
  ///
  /// In kk, this message translates to:
  /// **'Хабарландыруда бөтен фотосуреттер қолданылған'**
  String get stoComplaintReasonForeignPhotos;

  /// No description provided for @stoComplaintReasonLowPrice.
  ///
  /// In kk, this message translates to:
  /// **'Бағасы төмендетілген, көлік тапсырыспен сатылады'**
  String get stoComplaintReasonLowPrice;

  /// No description provided for @stoComplaintReasonMyPhone.
  ///
  /// In kk, this message translates to:
  /// **'Бұл менің телефон нөмірім, бірақ мен хабарландыру бермедім'**
  String get stoComplaintReasonMyPhone;

  /// No description provided for @stoComplaintReasonPriceError.
  ///
  /// In kk, this message translates to:
  /// **'Бағада қате бар'**
  String get stoComplaintReasonPriceError;

  /// No description provided for @stoComplaintReasonScam.
  ///
  /// In kk, this message translates to:
  /// **'Алаяқтық, алдау, жалған хабарландыру'**
  String get stoComplaintReasonScam;

  /// No description provided for @stoComplaintReasonTitle.
  ///
  /// In kk, this message translates to:
  /// **'Шағым себебі'**
  String get stoComplaintReasonTitle;

  /// No description provided for @stoComplaintReasonWrongPhoto.
  ///
  /// In kk, this message translates to:
  /// **'Фото хабарландыруға сәйкес келмейді'**
  String get stoComplaintReasonWrongPhoto;

  /// No description provided for @stoComplaintSubmit.
  ///
  /// In kk, this message translates to:
  /// **'Жіберу'**
  String get stoComplaintSubmit;

  /// No description provided for @stoCondition.
  ///
  /// In kk, this message translates to:
  /// **'Күйі'**
  String get stoCondition;

  /// No description provided for @stoDiameter.
  ///
  /// In kk, this message translates to:
  /// **'Диаметр'**
  String get stoDiameter;

  /// No description provided for @stoDisks.
  ///
  /// In kk, this message translates to:
  /// **'Дөңгелек дискілері'**
  String get stoDisks;

  /// No description provided for @stoFilterReset.
  ///
  /// In kk, this message translates to:
  /// **'Тазарту'**
  String get stoFilterReset;

  /// No description provided for @stoInStock.
  ///
  /// In kk, this message translates to:
  /// **'Қоймада бар'**
  String get stoInStock;

  /// No description provided for @stoMotoParts.
  ///
  /// In kk, this message translates to:
  /// **'Мотобөлшектер'**
  String get stoMotoParts;

  /// No description provided for @stoMultimedia.
  ///
  /// In kk, this message translates to:
  /// **'Мультимедиа'**
  String get stoMultimedia;

  /// No description provided for @stoMyRatings.
  ///
  /// In kk, this message translates to:
  /// **'Менің бағаларым'**
  String get stoMyRatings;

  /// No description provided for @stoNewCondition.
  ///
  /// In kk, this message translates to:
  /// **'Жаңа'**
  String get stoNewCondition;

  /// No description provided for @stoOnOrder.
  ///
  /// In kk, this message translates to:
  /// **'Тапсырыспен'**
  String get stoOnOrder;

  /// No description provided for @stoPartDetailAvailability.
  ///
  /// In kk, this message translates to:
  /// **'Қолда бар'**
  String get stoPartDetailAvailability;

  /// No description provided for @stoPartDetailCall.
  ///
  /// In kk, this message translates to:
  /// **'Қоңырау шалу'**
  String get stoPartDetailCall;

  /// No description provided for @stoPartDetailComplainAd.
  ///
  /// In kk, this message translates to:
  /// **'Хабарландыруға шағымдану'**
  String get stoPartDetailComplainAd;

  /// No description provided for @stoPartDetailSellerComment.
  ///
  /// In kk, this message translates to:
  /// **'Сатушының пікірі'**
  String get stoPartDetailSellerComment;

  /// No description provided for @stoPartDetailSellerContacts.
  ///
  /// In kk, this message translates to:
  /// **'Сатушының байланыстары'**
  String get stoPartDetailSellerContacts;

  /// No description provided for @stoPartDetailShowAll.
  ///
  /// In kk, this message translates to:
  /// **'Барлығын көрсету'**
  String get stoPartDetailShowAll;

  /// No description provided for @stoPartDetailSimilarAds.
  ///
  /// In kk, this message translates to:
  /// **'Ұқсас хабарландырулар'**
  String get stoPartDetailSimilarAds;

  /// No description provided for @stoPartDetailWrite.
  ///
  /// In kk, this message translates to:
  /// **'Жазу'**
  String get stoPartDetailWrite;

  /// No description provided for @stoPartDetailWriteInWhatsapp.
  ///
  /// In kk, this message translates to:
  /// **'Whatsapp-қа жазу'**
  String get stoPartDetailWriteInWhatsapp;

  /// No description provided for @stoPartType.
  ///
  /// In kk, this message translates to:
  /// **'Бөлшек түрі'**
  String get stoPartType;

  /// No description provided for @stoParts.
  ///
  /// In kk, this message translates to:
  /// **'Қосалқы бөлшектер'**
  String get stoParts;

  /// No description provided for @stoPartsPageTitle.
  ///
  /// In kk, this message translates to:
  /// **'Қосалқы бөлшектер'**
  String get stoPartsPageTitle;

  /// No description provided for @stoPrice.
  ///
  /// In kk, this message translates to:
  /// **'Бағасы'**
  String get stoPrice;

  /// No description provided for @stoProfileHeight.
  ///
  /// In kk, this message translates to:
  /// **'Профиль биіктігі'**
  String get stoProfileHeight;

  /// No description provided for @stoProfileWidth.
  ///
  /// In kk, this message translates to:
  /// **'Профиль ені'**
  String get stoProfileWidth;

  /// No description provided for @stoSeasonAllSeason.
  ///
  /// In kk, this message translates to:
  /// **'Барлық маусымға'**
  String get stoSeasonAllSeason;

  /// No description provided for @stoSeasonStudded.
  ///
  /// In kk, this message translates to:
  /// **'Шегелі'**
  String get stoSeasonStudded;

  /// No description provided for @stoSeasonSummer.
  ///
  /// In kk, this message translates to:
  /// **'Жазғы'**
  String get stoSeasonSummer;

  /// No description provided for @stoSeasonWinter.
  ///
  /// In kk, this message translates to:
  /// **'Қысқы'**
  String get stoSeasonWinter;

  /// No description provided for @stoSeasonality.
  ///
  /// In kk, this message translates to:
  /// **'Маусымдылық'**
  String get stoSeasonality;

  /// No description provided for @stoShow.
  ///
  /// In kk, this message translates to:
  /// **'Көрсету'**
  String get stoShow;

  /// No description provided for @stoSort.
  ///
  /// In kk, this message translates to:
  /// **'Сұрыптау'**
  String get stoSort;

  /// No description provided for @stoSortNewest.
  ///
  /// In kk, this message translates to:
  /// **'Алдымен жаңалары'**
  String get stoSortNewest;

  /// No description provided for @stoTextOption.
  ///
  /// In kk, this message translates to:
  /// **'-Мәтін'**
  String get stoTextOption;

  /// No description provided for @stoTires.
  ///
  /// In kk, this message translates to:
  /// **'Шиналар'**
  String get stoTires;

  /// No description provided for @stoUsedCondition.
  ///
  /// In kk, this message translates to:
  /// **'Қолданылған'**
  String get stoUsedCondition;

  /// No description provided for @stoWidth.
  ///
  /// In kk, this message translates to:
  /// **'Ені'**
  String get stoWidth;

  /// No description provided for @subcategory.
  ///
  /// In kk, this message translates to:
  /// **'Ішкі санат'**
  String get subcategory;

  /// No description provided for @subcriptionPrice.
  ///
  /// In kk, this message translates to:
  /// **'Жазылым құны'**
  String get subcriptionPrice;

  /// No description provided for @submissionToOmbudsman.
  ///
  /// In kk, this message translates to:
  /// **'Омбудсменге өтініш жіберу'**
  String get submissionToOmbudsman;

  /// No description provided for @submitApplication.
  ///
  /// In kk, this message translates to:
  /// **'Өтініш қалдыру'**
  String get submitApplication;

  /// No description provided for @subscriptions.
  ///
  /// In kk, this message translates to:
  /// **'Жазылымдар'**
  String get subscriptions;

  /// No description provided for @successAddCar.
  ///
  /// In kk, this message translates to:
  /// **'Сіздің көлігіңіз жүйеге сәтті қосылды'**
  String get successAddCar;

  /// No description provided for @successAlert.
  ///
  /// In kk, this message translates to:
  /// **'Өтінім сәтті қабылданды'**
  String get successAlert;

  /// No description provided for @successAlertSubtitle24Hours.
  ///
  /// In kk, this message translates to:
  /// **'Біздің менеджер сізбен 24 сағат ішінде хабарласады'**
  String get successAlertSubtitle24Hours;

  /// No description provided for @successEditCar.
  ///
  /// In kk, this message translates to:
  /// **'Сіздің көлігіңіз сәтті өзгертілді'**
  String get successEditCar;

  /// No description provided for @successfully.
  ///
  /// In kk, this message translates to:
  /// **'Сәтті'**
  String get successfully;

  /// No description provided for @successfullyUpdated.
  ///
  /// In kk, this message translates to:
  /// **'Сәтті жаңартылды!'**
  String get successfullyUpdated;

  /// No description provided for @supportAfterAssessment.
  ///
  /// In kk, this message translates to:
  /// **'Бағалаудан кейінгі қолдау'**
  String get supportAfterAssessment;

  /// No description provided for @support_service.
  ///
  /// In kk, this message translates to:
  /// **'Қолдау қызметі'**
  String get support_service;

  /// No description provided for @take_a_photo.
  ///
  /// In kk, this message translates to:
  /// **'Суретке түсіру'**
  String get take_a_photo;

  /// No description provided for @taxiPark.
  ///
  /// In kk, this message translates to:
  /// **'Таксопарк'**
  String get taxiPark;

  /// No description provided for @taxiParkApprovedSuccessSubtitle.
  ///
  /// In kk, this message translates to:
  /// **'ЖКО бойынша барлық мәселені біз өз мойнымызға аламыз - бағалау, құжаттар, сақтандыру және соттық сүйемелдеу. Сіз процесті бақылайсыз, біз нәтижені қамтамасыз етеміз.'**
  String get taxiParkApprovedSuccessSubtitle;

  /// No description provided for @taxiParkApprovedSuccessTitle.
  ///
  /// In kk, this message translates to:
  /// **'Құттықтаймыз!\nӨтініміңіз сәтті мақұлданды.'**
  String get taxiParkApprovedSuccessTitle;

  /// No description provided for @taxiParkCarCountHint.
  ///
  /// In kk, this message translates to:
  /// **'Сізде қанша көлік бар?'**
  String get taxiParkCarCountHint;

  /// No description provided for @taxiParkCarCountLabel.
  ///
  /// In kk, this message translates to:
  /// **'Көлік саны'**
  String get taxiParkCarCountLabel;

  /// No description provided for @taxiParkContractDescription.
  ///
  /// In kk, this message translates to:
  /// **'Жұмысты жалғастыру үшін көлік иесінен сенімхат жүктеңіз. Оны кез келген нотариустан төмендегі үлгі бойынша рәсімдей аласыз. Рәсімдегеннен кейін құжатты жеке кабинетке жүктеңіз'**
  String get taxiParkContractDescription;

  /// No description provided for @taxiParkContractDocument.
  ///
  /// In kk, this message translates to:
  /// **'Шарт'**
  String get taxiParkContractDocument;

  /// No description provided for @taxiParkContractDownloadTitle.
  ///
  /// In kk, this message translates to:
  /// **'Шартты жүктеп алыңыз'**
  String get taxiParkContractDownloadTitle;

  /// No description provided for @taxiParkDocumentsModerationSuccessSubtitle.
  ///
  /// In kk, this message translates to:
  /// **'Құжаттар модерацияға жіберілді. Тексерілгеннен кейін мәртебе қолданбада жаңартылады.'**
  String get taxiParkDocumentsModerationSuccessSubtitle;

  /// No description provided for @taxiParkDocumentsModerationSuccessTitle.
  ///
  /// In kk, this message translates to:
  /// **'Құжаттар сәтті жіберілді'**
  String get taxiParkDocumentsModerationSuccessTitle;

  /// No description provided for @taxiParkModerationSuccessSubtitle.
  ///
  /// In kk, this message translates to:
  /// **'Деректер модерацияға жіберілді. Тексерілгеннен кейін мәртебе қолданбада жаңартылады.'**
  String get taxiParkModerationSuccessSubtitle;

  /// No description provided for @taxiParkModerationSuccessTitle.
  ///
  /// In kk, this message translates to:
  /// **'Өтінім сәтті жіберілді'**
  String get taxiParkModerationSuccessTitle;

  /// No description provided for @taxiParkProxyDownloadTitle.
  ///
  /// In kk, this message translates to:
  /// **'Сенімхатты жүктеп алыңыз'**
  String get taxiParkProxyDownloadTitle;

  /// No description provided for @taxiParkRejectedDocumentsSubtitle.
  ///
  /// In kk, this message translates to:
  /// **'Түзетілген шарт пен сенімхатты жүктеп, құжаттарды қайта жіберіңіз.'**
  String get taxiParkRejectedDocumentsSubtitle;

  /// No description provided for @taxiParkRejectedDocumentsTitle.
  ///
  /// In kk, this message translates to:
  /// **'Модератор құжаттарды қабылдамады'**
  String get taxiParkRejectedDocumentsTitle;

  /// No description provided for @taxiParkRejectedFirstStageSubtitle.
  ///
  /// In kk, this message translates to:
  /// **'Төмендегі деректерді тексеріп, қажет болса пікірді түзетіп, өтінімді қайта жіберіңіз.'**
  String get taxiParkRejectedFirstStageSubtitle;

  /// No description provided for @taxiParkRejectedFirstStageTitle.
  ///
  /// In kk, this message translates to:
  /// **'Модератор өтінімді қабылдамады'**
  String get taxiParkRejectedFirstStageTitle;

  /// No description provided for @taxiParkRejectedModeratorCommentLabel.
  ///
  /// In kk, this message translates to:
  /// **'Модератор пікірі'**
  String get taxiParkRejectedModeratorCommentLabel;

  /// No description provided for @taxiParkRequestNotice.
  ///
  /// In kk, this message translates to:
  /// **'5 және одан көп көлігі бар автопарктерге\nЖКО бойынша барлық мәселені мамандарға тапсырыңыз. Біз әр істі толық сүйемелдейміз: тіркеу мен құжат жинаудан бастап төлем өндіру мен сот арқылы өндіріп алуға дейін.'**
  String get taxiParkRequestNotice;

  /// No description provided for @taxiParkSuccessSubtitle.
  ///
  /// In kk, this message translates to:
  /// **'Біздің менеджер сізбен 1 жұмыс күні ішінде хабарласады'**
  String get taxiParkSuccessSubtitle;

  /// No description provided for @taxiParkSupportNotice.
  ///
  /// In kk, this message translates to:
  /// **'ЖКО болған жағдайда қажетті құжаттарды тізімге сай жүктеңіз.\nПікірде ЖКО қай жерде болғанын көрсетіңіз.\nБіздің мамандар ақпаратты өңдеп, өтінімді қабылдап, сүйемелдеуді бастайды.\nІс мәртебесін осы жерден қадағалай аласыз.'**
  String get taxiParkSupportNotice;

  /// No description provided for @taxiParkUploadContractTitle.
  ///
  /// In kk, this message translates to:
  /// **'Шартты жүктеңіз'**
  String get taxiParkUploadContractTitle;

  /// No description provided for @techDescription.
  ///
  /// In kk, this message translates to:
  /// **'Техникалық сипаттамалары'**
  String get techDescription;

  /// No description provided for @techPassport.
  ///
  /// In kk, this message translates to:
  /// **'Көлік тіркеу туралы куәлік (техпаспорт)'**
  String get techPassport;

  /// No description provided for @techSupport.
  ///
  /// In kk, this message translates to:
  /// **'Техникалық қолдау'**
  String get techSupport;

  /// No description provided for @tenge.
  ///
  /// In kk, this message translates to:
  /// **'теңге'**
  String get tenge;

  /// No description provided for @thank_you_for_contacting_us.
  ///
  /// In kk, this message translates to:
  /// **'Үндеу үшін рахмет, сіз әлемді жақсартасыз'**
  String get thank_you_for_contacting_us;

  /// No description provided for @theRatingUpdate.
  ///
  /// In kk, this message translates to:
  /// **'Рейтинг нақты уақыт режимінде автоматты түрде жаңартылады.'**
  String get theRatingUpdate;

  /// No description provided for @the_base_rating_starts_from.
  ///
  /// In kk, this message translates to:
  /// **'Базалық рейтинг 1.0-ден басталады.'**
  String get the_base_rating_starts_from;

  /// No description provided for @then.
  ///
  /// In kk, this message translates to:
  /// **'ТАҒЫ'**
  String get then;

  /// No description provided for @they_are_discussing_it_now.
  ///
  /// In kk, this message translates to:
  /// **'Қазір талқылануда'**
  String get they_are_discussing_it_now;

  /// No description provided for @thisMonth.
  ///
  /// In kk, this message translates to:
  /// **'Осы айда'**
  String get thisMonth;

  /// No description provided for @thisWeek.
  ///
  /// In kk, this message translates to:
  /// **'Осы аптада'**
  String get thisWeek;

  /// No description provided for @timeAndPlaceOfMeeting.
  ///
  /// In kk, this message translates to:
  /// **'Кездесудің уақыты мен орны'**
  String get timeAndPlaceOfMeeting;

  /// No description provided for @today.
  ///
  /// In kk, this message translates to:
  /// **'Бүгін'**
  String get today;

  /// No description provided for @unblock.
  ///
  /// In kk, this message translates to:
  /// **'Бұғаттан шығару'**
  String get unblock;

  /// No description provided for @update.
  ///
  /// In kk, this message translates to:
  /// **'Жаңарту!'**
  String get update;

  /// No description provided for @upload.
  ///
  /// In kk, this message translates to:
  /// **'Жүктеу'**
  String get upload;

  /// No description provided for @uploadAccidentPhoto.
  ///
  /// In kk, this message translates to:
  /// **'Жол-көлік оқиғасы орнынан фото жүктеу '**
  String get uploadAccidentPhoto;

  /// No description provided for @uploadAccidentVideo.
  ///
  /// In kk, this message translates to:
  /// **'Жол-көлік оқиғасы орнынан видео жүктеу  '**
  String get uploadAccidentVideo;

  /// No description provided for @uploadDamagePhoto.
  ///
  /// In kk, this message translates to:
  /// **'Зақымдану фотосын жүктеу'**
  String get uploadDamagePhoto;

  /// No description provided for @uploadDocuments.
  ///
  /// In kk, this message translates to:
  /// **'Құжаттарды жүктеу'**
  String get uploadDocuments;

  /// No description provided for @uploadFivePhotos.
  ///
  /// In kk, this message translates to:
  /// **'Файлдарды жүктеу (ең көбі 5 фото)'**
  String get uploadFivePhotos;

  /// No description provided for @uploadPhoto.
  ///
  /// In kk, this message translates to:
  /// **'Фотосуретті жүктеу'**
  String get uploadPhoto;

  /// No description provided for @uploadPhotosMax30.
  ///
  /// In kk, this message translates to:
  /// **'Файлдарды жүктеу (ең көбі 50 фотосурет)'**
  String get uploadPhotosMax30;

  /// No description provided for @uploadProxyTitle.
  ///
  /// In kk, this message translates to:
  /// **'Сенімхатты жүктеңіз'**
  String get uploadProxyTitle;

  /// No description provided for @uploadTwelvePhotos.
  ///
  /// In kk, this message translates to:
  /// **'Файлдарды жүктеу (ең көбі 15 фото)'**
  String get uploadTwelvePhotos;

  /// No description provided for @uploadVideo.
  ///
  /// In kk, this message translates to:
  /// **'Видеоны жүктеу'**
  String get uploadVideo;

  /// No description provided for @uploadVideoMax3.
  ///
  /// In kk, this message translates to:
  /// **'Файлдарды жүктеу (ең көбі 3 бейне)'**
  String get uploadVideoMax3;

  /// No description provided for @upload_a_photo.
  ///
  /// In kk, this message translates to:
  /// **'Өнімнің фотосуретін жақсы сапада жүктеңіз, ешқандай белгілер мен жазулар жоқ болсын.'**
  String get upload_a_photo;

  /// No description provided for @user_photos.
  ///
  /// In kk, this message translates to:
  /// **'Пайдаланушылардың суреттері'**
  String get user_photos;

  /// No description provided for @uzbek.
  ///
  /// In kk, this message translates to:
  /// **'Өзбек тілі'**
  String get uzbek;

  /// No description provided for @victim.
  ///
  /// In kk, this message translates to:
  /// **'Жәбірленуші'**
  String get victim;

  /// No description provided for @victimCar.
  ///
  /// In kk, this message translates to:
  /// **'Жәбірленушінің көлігі'**
  String get victimCar;

  /// No description provided for @victimVehiclePlate.
  ///
  /// In kk, this message translates to:
  /// **' Жәбірленушінің көлік нөмірі'**
  String get victimVehiclePlate;

  /// No description provided for @video.
  ///
  /// In kk, this message translates to:
  /// **'Видео'**
  String get video;

  /// No description provided for @view.
  ///
  /// In kk, this message translates to:
  /// **'Көру'**
  String get view;

  /// No description provided for @viewDocuments.
  ///
  /// In kk, this message translates to:
  /// **'Құжаттарды көру'**
  String get viewDocuments;

  /// No description provided for @vinCode.
  ///
  /// In kk, this message translates to:
  /// **'VIN код'**
  String get vinCode;

  /// No description provided for @vinCode1.
  ///
  /// In kk, this message translates to:
  /// **'Алдыңғы әйнек астындағы VIN'**
  String get vinCode1;

  /// No description provided for @vinCode2.
  ///
  /// In kk, this message translates to:
  /// **'Жапсырмадағы VIN'**
  String get vinCode2;

  /// No description provided for @vinCode3.
  ///
  /// In kk, this message translates to:
  /// **'Есік тірегіндегі VIN'**
  String get vinCode3;

  /// No description provided for @virtualCard.
  ///
  /// In kk, this message translates to:
  /// **'Виртуалды карта'**
  String get virtualCard;

  /// No description provided for @waiting.
  ///
  /// In kk, this message translates to:
  /// **'Күтуде'**
  String get waiting;

  /// No description provided for @wantToPlaceAdvertisement.
  ///
  /// In kk, this message translates to:
  /// **'Жарнама орналастырғыңыз келе ме?'**
  String get wantToPlaceAdvertisement;

  /// No description provided for @wasCrashed.
  ///
  /// In kk, this message translates to:
  /// **'Апатқа ұшырадыңыз ба?'**
  String get wasCrashed;

  /// No description provided for @weCanTakeYourCaseForSupport.
  ///
  /// In kk, this message translates to:
  /// **'Біз сіздің ісіңізді сүйемелдеуге ала аламыз. Осы қызметті пайдаланғыңыз келе ме?'**
  String get weCanTakeYourCaseForSupport;

  /// No description provided for @weHaveSent.
  ///
  /// In kk, this message translates to:
  /// **'Біз сіздің электрондық пошта мекенжайыңызға растау кодын жібердік'**
  String get weHaveSent;

  /// No description provided for @website.
  ///
  /// In kk, this message translates to:
  /// **'Сайт'**
  String get website;

  /// No description provided for @words.
  ///
  /// In kk, this message translates to:
  /// **'сөз'**
  String get words;

  /// No description provided for @write.
  ///
  /// In kk, this message translates to:
  /// **'Жазыңыз ...'**
  String get write;

  /// No description provided for @writeComments.
  ///
  /// In kk, this message translates to:
  /// **'Пікір жазыңыз'**
  String get writeComments;

  /// No description provided for @writeReview.
  ///
  /// In kk, this message translates to:
  /// **'Пікір жазыңыз...'**
  String get writeReview;

  /// No description provided for @write_a_review.
  ///
  /// In kk, this message translates to:
  /// **'Пікір жазыңыз'**
  String get write_a_review;

  /// No description provided for @year.
  ///
  /// In kk, this message translates to:
  /// **'жыл'**
  String get year;

  /// No description provided for @yes.
  ///
  /// In kk, this message translates to:
  /// **'Иә'**
  String get yes;

  /// No description provided for @yes_get_out.
  ///
  /// In kk, this message translates to:
  /// **'Иә, шығамын'**
  String get yes_get_out;

  /// No description provided for @yourApplicationWasSuccessfullySubmitted.
  ///
  /// In kk, this message translates to:
  /// **'Сіздің өтініміңіз сәтті жіберілді'**
  String get yourApplicationWasSuccessfullySubmitted;

  /// No description provided for @yourPhoneNumber.
  ///
  /// In kk, this message translates to:
  /// **'Сіздің нөміріңіз'**
  String get yourPhoneNumber;

  /// No description provided for @yourRating.
  ///
  /// In kk, this message translates to:
  /// **'Сіздің рейтингіңіз сіздің пікірлеріңіздің сенімділігі мен көрінуін арттырады! 😊'**
  String get yourRating;

  /// No description provided for @your_rating_depends_on_the_number.
  ///
  /// In kk, this message translates to:
  /// **'Сіздің рейтингіңіз сіздің пікірлеріңіздің астындағы ұнатулар санына байланысты: ұнатулар неғұрлым көп болса, рейтинг соғұрлым жоғары болады!'**
  String get your_rating_depends_on_the_number;

  /// No description provided for @your_response_to_the_comment.
  ///
  /// In kk, this message translates to:
  /// **'Сіздің пікірге жауап'**
  String get your_response_to_the_comment;

  /// No description provided for @bottomNavHome.
  ///
  /// In kk, this message translates to:
  /// **'Басты'**
  String get bottomNavHome;

  /// No description provided for @bottomNavFavorites.
  ///
  /// In kk, this message translates to:
  /// **'Таңдаулы'**
  String get bottomNavFavorites;

  /// No description provided for @bottomNavPost.
  ///
  /// In kk, this message translates to:
  /// **'Жариялау'**
  String get bottomNavPost;

  /// No description provided for @bottomNavMessages.
  ///
  /// In kk, this message translates to:
  /// **'Хабарламалар'**
  String get bottomNavMessages;

  /// No description provided for @bottomNavCabinet.
  ///
  /// In kk, this message translates to:
  /// **'Кабинет'**
  String get bottomNavCabinet;

  /// No description provided for @adminBottomNavHome.
  ///
  /// In kk, this message translates to:
  /// **'Басты'**
  String get adminBottomNavHome;

  /// No description provided for @adminBottomNavGrades.
  ///
  /// In kk, this message translates to:
  /// **'Бағалау'**
  String get adminBottomNavGrades;

  /// No description provided for @adminBottomNavCreate.
  ///
  /// In kk, this message translates to:
  /// **'Жасау'**
  String get adminBottomNavCreate;

  /// No description provided for @adminBottomNavTasks.
  ///
  /// In kk, this message translates to:
  /// **'Тапсырмалар'**
  String get adminBottomNavTasks;

  /// No description provided for @adminAppTitle.
  ///
  /// In kk, this message translates to:
  /// **'Автокомек'**
  String get adminAppTitle;

  /// No description provided for @adminDashboardAccompanimentRequests.
  ///
  /// In kk, this message translates to:
  /// **'Сүйемелдеу өтінімдері'**
  String get adminDashboardAccompanimentRequests;

  /// No description provided for @adminDashboardPaidCarDamageAssessment.
  ///
  /// In kk, this message translates to:
  /// **'Автозақымды ақылы бағалау'**
  String get adminDashboardPaidCarDamageAssessment;

  /// No description provided for @adminDashboardFreeCarDamageAssessment.
  ///
  /// In kk, this message translates to:
  /// **'Автозақымды тегін бағалау'**
  String get adminDashboardFreeCarDamageAssessment;

  /// No description provided for @adminDashboardUtsAssessment.
  ///
  /// In kk, this message translates to:
  /// **'ЖҚҚ бағалау'**
  String get adminDashboardUtsAssessment;

  /// No description provided for @adminDashboardMarketValueAssessment.
  ///
  /// In kk, this message translates to:
  /// **'Нарықтық құнды бағалау'**
  String get adminDashboardMarketValueAssessment;

  /// No description provided for @adminDashboardTaxiPark.
  ///
  /// In kk, this message translates to:
  /// **'Таксопарк'**
  String get adminDashboardTaxiPark;

  /// No description provided for @adminDashboardTrustMeContract.
  ///
  /// In kk, this message translates to:
  /// **'TrustMe шарты'**
  String get adminDashboardTrustMeContract;

  /// No description provided for @adminDashboardChangePassword.
  ///
  /// In kk, this message translates to:
  /// **'Құпиясөзді өзгерту'**
  String get adminDashboardChangePassword;

  /// No description provided for @adminAccompanimentStatusesTitle.
  ///
  /// In kk, this message translates to:
  /// **'Сүйемелдеу өтінімі'**
  String get adminAccompanimentStatusesTitle;

  /// No description provided for @adminAccompanimentStatusAwaitingRegistration.
  ///
  /// In kk, this message translates to:
  /// **'Тіркеуді күтуде'**
  String get adminAccompanimentStatusAwaitingRegistration;

  /// No description provided for @adminAccompanimentStatusWithoutProxy.
  ///
  /// In kk, this message translates to:
  /// **'Сенімхат жоқ'**
  String get adminAccompanimentStatusWithoutProxy;

  /// No description provided for @adminAccompanimentStatusWithoutGai.
  ///
  /// In kk, this message translates to:
  /// **'ГАИ жоқ'**
  String get adminAccompanimentStatusWithoutGai;

  /// No description provided for @adminAccompanimentStatusInWorkSk.
  ///
  /// In kk, this message translates to:
  /// **'СҚ-да жұмыста'**
  String get adminAccompanimentStatusInWorkSk;

  /// No description provided for @adminAccompanimentStatusDirectionFromSk.
  ///
  /// In kk, this message translates to:
  /// **'СҚ бағыттамасы'**
  String get adminAccompanimentStatusDirectionFromSk;

  /// No description provided for @adminAccompanimentStatusExpertiseNotification.
  ///
  /// In kk, this message translates to:
  /// **'Сараптама тағайындау туралы хабарлама'**
  String get adminAccompanimentStatusExpertiseNotification;

  /// No description provided for @adminAccompanimentStatusAssessmentProcess.
  ///
  /// In kk, this message translates to:
  /// **'Бағалау процесі'**
  String get adminAccompanimentStatusAssessmentProcess;

  /// No description provided for @adminAccompanimentStatusAssessmentRevisionSk.
  ///
  /// In kk, this message translates to:
  /// **'СҚ-да бағалауды қайта қарау'**
  String get adminAccompanimentStatusAssessmentRevisionSk;

  /// No description provided for @adminAccompanimentStatusPaymentProcess.
  ///
  /// In kk, this message translates to:
  /// **'Төлем процесі'**
  String get adminAccompanimentStatusPaymentProcess;

  /// No description provided for @adminAccompanimentStatusOmbudsmanNotice.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыру омбудсманына хабарлама'**
  String get adminAccompanimentStatusOmbudsmanNotice;

  /// No description provided for @adminAccompanimentStatusOmbudsmanAcceptance.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыру омбудсманының қабылдауы'**
  String get adminAccompanimentStatusOmbudsmanAcceptance;

  /// No description provided for @adminAccompanimentStatusOmbudsmanDecision.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыру омбудсманының шешімі'**
  String get adminAccompanimentStatusOmbudsmanDecision;

  /// No description provided for @adminAccompanimentStatusCivilCourt.
  ///
  /// In kk, this message translates to:
  /// **'Азаматтық сот'**
  String get adminAccompanimentStatusCivilCourt;

  /// No description provided for @adminAccompanimentStatusArchive.
  ///
  /// In kk, this message translates to:
  /// **'Мұрағат'**
  String get adminAccompanimentStatusArchive;

  /// No description provided for @adminAccompanimentPhoneLabel.
  ///
  /// In kk, this message translates to:
  /// **'Телефон нөмірі'**
  String get adminAccompanimentPhoneLabel;

  /// No description provided for @adminAccompanimentDateTimeLabel.
  ///
  /// In kk, this message translates to:
  /// **'Күні мен уақыты'**
  String get adminAccompanimentDateTimeLabel;

  /// No description provided for @adminAccompanimentInsuranceCompanyLabel.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыру компаниясы'**
  String get adminAccompanimentInsuranceCompanyLabel;

  /// No description provided for @adminAccompanimentBrandModelLabel.
  ///
  /// In kk, this message translates to:
  /// **'Маркасы мен моделі'**
  String get adminAccompanimentBrandModelLabel;

  /// No description provided for @adminAccompanimentGosNumberLabel.
  ///
  /// In kk, this message translates to:
  /// **'Мемлекеттік нөмір'**
  String get adminAccompanimentGosNumberLabel;

  /// No description provided for @adminAccompanimentAmountNeLabel.
  ///
  /// In kk, this message translates to:
  /// **'Тәуелсіз сараптама сомасы'**
  String get adminAccompanimentAmountNeLabel;

  /// No description provided for @adminAccompanimentAmountSkLabel.
  ///
  /// In kk, this message translates to:
  /// **'СҚ сомасы'**
  String get adminAccompanimentAmountSkLabel;

  /// No description provided for @adminAccompanimentDownloadZip.
  ///
  /// In kk, this message translates to:
  /// **'ZIP жүктеу'**
  String get adminAccompanimentDownloadZip;

  /// No description provided for @adminAccompanimentChange.
  ///
  /// In kk, this message translates to:
  /// **'Өзгерту'**
  String get adminAccompanimentChange;

  /// No description provided for @adminAccompanimentEmpty.
  ///
  /// In kk, this message translates to:
  /// **'Өтінімдер жоқ'**
  String get adminAccompanimentEmpty;

  /// No description provided for @adminAccompanimentStatusLabel.
  ///
  /// In kk, this message translates to:
  /// **'Мәртебе'**
  String get adminAccompanimentStatusLabel;

  /// No description provided for @adminAccompanimentVictimTitle.
  ///
  /// In kk, this message translates to:
  /// **'Жәбірленуші'**
  String get adminAccompanimentVictimTitle;

  /// No description provided for @adminAccompanimentCulpritTitle.
  ///
  /// In kk, this message translates to:
  /// **'Кінәлі'**
  String get adminAccompanimentCulpritTitle;

  /// No description provided for @adminAccompanimentAccidentTitle.
  ///
  /// In kk, this message translates to:
  /// **'ЖКО туралы ақпарат'**
  String get adminAccompanimentAccidentTitle;

  /// No description provided for @adminAccompanimentPaymentTitle.
  ///
  /// In kk, this message translates to:
  /// **'Төлем'**
  String get adminAccompanimentPaymentTitle;

  /// No description provided for @adminAccompanimentLoginNumberLabel.
  ///
  /// In kk, this message translates to:
  /// **'Логин нөмірі'**
  String get adminAccompanimentLoginNumberLabel;

  /// No description provided for @adminAccompanimentDriverNameLabel.
  ///
  /// In kk, this message translates to:
  /// **'Жүргізушінің аты-жөні'**
  String get adminAccompanimentDriverNameLabel;

  /// No description provided for @adminAccompanimentDriverIinLabel.
  ///
  /// In kk, this message translates to:
  /// **'Жүргізушінің ЖСН'**
  String get adminAccompanimentDriverIinLabel;

  /// No description provided for @adminAccompanimentDriverPhoneLabel.
  ///
  /// In kk, this message translates to:
  /// **'Жүргізушінің телефоны'**
  String get adminAccompanimentDriverPhoneLabel;

  /// No description provided for @adminAccompanimentOwnerNameLabel.
  ///
  /// In kk, this message translates to:
  /// **'Иесінің аты-жөні'**
  String get adminAccompanimentOwnerNameLabel;

  /// No description provided for @adminAccompanimentOwnerIinLabel.
  ///
  /// In kk, this message translates to:
  /// **'Иесінің ЖСН'**
  String get adminAccompanimentOwnerIinLabel;

  /// No description provided for @adminAccompanimentOwnerPhoneLabel.
  ///
  /// In kk, this message translates to:
  /// **'Иесінің телефоны'**
  String get adminAccompanimentOwnerPhoneLabel;

  /// No description provided for @adminAccompanimentYearLabel.
  ///
  /// In kk, this message translates to:
  /// **'Шыққан жылы'**
  String get adminAccompanimentYearLabel;

  /// No description provided for @adminAccompanimentContractDateLabel.
  ///
  /// In kk, this message translates to:
  /// **'Шарт күні'**
  String get adminAccompanimentContractDateLabel;

  /// No description provided for @adminAccompanimentCulpritNameLabel.
  ///
  /// In kk, this message translates to:
  /// **'Кінәлінің аты-жөні'**
  String get adminAccompanimentCulpritNameLabel;

  /// No description provided for @adminAccompanimentCulpritIinLabel.
  ///
  /// In kk, this message translates to:
  /// **'Кінәлінің ЖСН'**
  String get adminAccompanimentCulpritIinLabel;

  /// No description provided for @adminAccompanimentCulpritPhoneLabel.
  ///
  /// In kk, this message translates to:
  /// **'Кінәлінің телефоны'**
  String get adminAccompanimentCulpritPhoneLabel;

  /// No description provided for @adminAccompanimentCulpritGrnzLabel.
  ///
  /// In kk, this message translates to:
  /// **'Кінәлінің мемнөмірі'**
  String get adminAccompanimentCulpritGrnzLabel;

  /// No description provided for @adminAccompanimentRovdLabel.
  ///
  /// In kk, this message translates to:
  /// **'ІІБ'**
  String get adminAccompanimentRovdLabel;

  /// No description provided for @adminAccompanimentCrashPlaceLabel.
  ///
  /// In kk, this message translates to:
  /// **'Оқиға орны'**
  String get adminAccompanimentCrashPlaceLabel;

  /// No description provided for @adminAccompanimentCrashDateLabel.
  ///
  /// In kk, this message translates to:
  /// **'ЖКО күні'**
  String get adminAccompanimentCrashDateLabel;

  /// No description provided for @adminAccompanimentCrashDescriptionLabel.
  ///
  /// In kk, this message translates to:
  /// **'ЖКО сипаттамасы'**
  String get adminAccompanimentCrashDescriptionLabel;

  /// No description provided for @adminAccompanimentDamageTitle.
  ///
  /// In kk, this message translates to:
  /// **'Бағалаудан кейінгі залал'**
  String get adminAccompanimentDamageTitle;

  /// No description provided for @adminAccompanimentAmountApprovalLabel.
  ///
  /// In kk, this message translates to:
  /// **'Бекітілген сома'**
  String get adminAccompanimentAmountApprovalLabel;

  /// No description provided for @adminAccompanimentReviewSendingLabel.
  ///
  /// In kk, this message translates to:
  /// **'Қайта қарау жіберілді'**
  String get adminAccompanimentReviewSendingLabel;

  /// No description provided for @adminAccompanimentRevisionResponseLabel.
  ///
  /// In kk, this message translates to:
  /// **'Қайта қарау жауабы'**
  String get adminAccompanimentRevisionResponseLabel;

  /// No description provided for @adminAccompanimentAmountUtrataLabel.
  ///
  /// In kk, this message translates to:
  /// **'Тауарлық құнның жоғалуы'**
  String get adminAccompanimentAmountUtrataLabel;

  /// No description provided for @adminAccompanimentCourtTitle.
  ///
  /// In kk, this message translates to:
  /// **'Сот'**
  String get adminAccompanimentCourtTitle;

  /// No description provided for @adminAccompanimentCourtRegistrationDateLabel.
  ///
  /// In kk, this message translates to:
  /// **'ЖКО күні'**
  String get adminAccompanimentCourtRegistrationDateLabel;

  /// No description provided for @adminAccompanimentCourtProcessDateLabel.
  ///
  /// In kk, this message translates to:
  /// **'Процесс күнін тағайындау'**
  String get adminAccompanimentCourtProcessDateLabel;

  /// No description provided for @adminAccompanimentEntryIntoForceLabel.
  ///
  /// In kk, this message translates to:
  /// **'Заңды күшіне ену'**
  String get adminAccompanimentEntryIntoForceLabel;

  /// No description provided for @adminAccompanimentPayoutTitle.
  ///
  /// In kk, this message translates to:
  /// **'Төлем'**
  String get adminAccompanimentPayoutTitle;

  /// No description provided for @adminAccompanimentSubmittingApplicationLabel.
  ///
  /// In kk, this message translates to:
  /// **'Өтініш жіберу'**
  String get adminAccompanimentSubmittingApplicationLabel;

  /// No description provided for @adminAccompanimentReceivingPaymentLabel.
  ///
  /// In kk, this message translates to:
  /// **'Төлем алу'**
  String get adminAccompanimentReceivingPaymentLabel;

  /// No description provided for @adminAccompanimentPercent15Label.
  ///
  /// In kk, this message translates to:
  /// **'Автокөмектің 15%'**
  String get adminAccompanimentPercent15Label;

  /// No description provided for @adminAccompanimentOmbudsmanTitle.
  ///
  /// In kk, this message translates to:
  /// **'Омбудсман'**
  String get adminAccompanimentOmbudsmanTitle;

  /// No description provided for @adminAccompanimentSendingNoticeSkLabel.
  ///
  /// In kk, this message translates to:
  /// **'СҚ хабарламасына жіберу'**
  String get adminAccompanimentSendingNoticeSkLabel;

  /// No description provided for @adminAccompanimentOmbudsmanApplicationLabel.
  ///
  /// In kk, this message translates to:
  /// **'Омбудсманға өтініш'**
  String get adminAccompanimentOmbudsmanApplicationLabel;

  /// No description provided for @adminAccompanimentOmbudsmanCaseNumberLabel.
  ///
  /// In kk, this message translates to:
  /// **'Омбудсман ісінің №'**
  String get adminAccompanimentOmbudsmanCaseNumberLabel;

  /// No description provided for @adminAccompanimentProcessDateTitle.
  ///
  /// In kk, this message translates to:
  /// **'Процесс күні'**
  String get adminAccompanimentProcessDateTitle;

  /// No description provided for @adminAccompanimentProcessDateLabel.
  ///
  /// In kk, this message translates to:
  /// **'Процесс күні'**
  String get adminAccompanimentProcessDateLabel;

  /// No description provided for @adminAccompanimentSigningDecisionDateLabel.
  ///
  /// In kk, this message translates to:
  /// **'Шешімге қол қойылған күні'**
  String get adminAccompanimentSigningDecisionDateLabel;

  /// No description provided for @adminAccompanimentAdditionalAmountTitle.
  ///
  /// In kk, this message translates to:
  /// **'Клиентке қосымша сома'**
  String get adminAccompanimentAdditionalAmountTitle;

  /// No description provided for @adminAccompanimentAddAmountLabel.
  ///
  /// In kk, this message translates to:
  /// **'ҚОС сома'**
  String get adminAccompanimentAddAmountLabel;

  /// No description provided for @adminAccompanimentReturnIndepAssessmentLabel.
  ///
  /// In kk, this message translates to:
  /// **'Тәуелсіз бағалауды қайтару'**
  String get adminAccompanimentReturnIndepAssessmentLabel;

  /// No description provided for @adminAccompanimentCivilCourtLabel.
  ///
  /// In kk, this message translates to:
  /// **'Азаматтық сот'**
  String get adminAccompanimentCivilCourtLabel;

  /// No description provided for @adminAccompanimentClientCommentLabel.
  ///
  /// In kk, this message translates to:
  /// **'Клиенттің пікірі'**
  String get adminAccompanimentClientCommentLabel;

  /// No description provided for @adminAccompanimentAvtokomekCommentLabel.
  ///
  /// In kk, this message translates to:
  /// **'Avtokomek пікірі'**
  String get adminAccompanimentAvtokomekCommentLabel;

  /// No description provided for @adminAccompanimentCommentHint.
  ///
  /// In kk, this message translates to:
  /// **'Қажет болса пікір қосыңыз'**
  String get adminAccompanimentCommentHint;

  /// No description provided for @adminAccompanimentFileTooLarge.
  ///
  /// In kk, this message translates to:
  /// **'Файл 20 МБ-тан үлкен'**
  String get adminAccompanimentFileTooLarge;

  /// No description provided for @adminAccompanimentCreateTitle.
  ///
  /// In kk, this message translates to:
  /// **'Сүйемелдеу жасау'**
  String get adminAccompanimentCreateTitle;

  /// No description provided for @adminAccompanimentCreateSuccess.
  ///
  /// In kk, this message translates to:
  /// **'Сәтті жасалды'**
  String get adminAccompanimentCreateSuccess;

  /// No description provided for @adminAccompanimentFioLabel.
  ///
  /// In kk, this message translates to:
  /// **'Аты-жөні'**
  String get adminAccompanimentFioLabel;

  /// No description provided for @adminAccompanimentIinLabel.
  ///
  /// In kk, this message translates to:
  /// **'ЖСН'**
  String get adminAccompanimentIinLabel;

  /// No description provided for @adminAccompanimentIdNumberLabel.
  ///
  /// In kk, this message translates to:
  /// **'Куәлік нөмірі'**
  String get adminAccompanimentIdNumberLabel;

  /// No description provided for @adminAccompanimentIdIssueDateLabel.
  ///
  /// In kk, this message translates to:
  /// **'Куәліктің берілген күні'**
  String get adminAccompanimentIdIssueDateLabel;

  /// No description provided for @adminAccompanimentIdIssuedByLabel.
  ///
  /// In kk, this message translates to:
  /// **'Кім берген'**
  String get adminAccompanimentIdIssuedByLabel;

  /// No description provided for @adminAccompanimentEditTitle.
  ///
  /// In kk, this message translates to:
  /// **'Сүйемелдеуді өзгерту'**
  String get adminAccompanimentEditTitle;

  /// No description provided for @adminAccompanimentVictimAllDataTitle.
  ///
  /// In kk, this message translates to:
  /// **'Жәбірленуші жақтың барлық деректері'**
  String get adminAccompanimentVictimAllDataTitle;

  /// No description provided for @adminAccompanimentCulpritAllDataTitle.
  ///
  /// In kk, this message translates to:
  /// **'Кінәлінің барлық деректері'**
  String get adminAccompanimentCulpritAllDataTitle;

  /// No description provided for @adminAccompanimentOpProcessTitle.
  ///
  /// In kk, this message translates to:
  /// **'ОП процесі'**
  String get adminAccompanimentOpProcessTitle;

  /// No description provided for @adminPaidDamageAssessmentInspectionPlaceLabel.
  ///
  /// In kk, this message translates to:
  /// **'Қарау орны'**
  String get adminPaidDamageAssessmentInspectionPlaceLabel;

  /// No description provided for @adminPaidDamageAssessmentTabNew.
  ///
  /// In kk, this message translates to:
  /// **'Жаңалар'**
  String get adminPaidDamageAssessmentTabNew;

  /// No description provided for @adminPaidDamageAssessmentTabInProgress.
  ///
  /// In kk, this message translates to:
  /// **'Үрдісте'**
  String get adminPaidDamageAssessmentTabInProgress;

  /// No description provided for @adminPaidDamageAssessmentTabReady.
  ///
  /// In kk, this message translates to:
  /// **'Дайын'**
  String get adminPaidDamageAssessmentTabReady;

  /// No description provided for @adminPaidDamageAssessmentTabArchive.
  ///
  /// In kk, this message translates to:
  /// **'Мұрағат'**
  String get adminPaidDamageAssessmentTabArchive;

  /// No description provided for @adminPaidDamageAssessmentStatusNew.
  ///
  /// In kk, this message translates to:
  /// **'Жаңа'**
  String get adminPaidDamageAssessmentStatusNew;

  /// No description provided for @adminPaidDamageAssessmentStatusInProgress.
  ///
  /// In kk, this message translates to:
  /// **'Үрдісте'**
  String get adminPaidDamageAssessmentStatusInProgress;

  /// No description provided for @adminPaidDamageAssessmentStatusReady.
  ///
  /// In kk, this message translates to:
  /// **'Дайын'**
  String get adminPaidDamageAssessmentStatusReady;

  /// No description provided for @adminPaidDamageAssessmentStatusArchive.
  ///
  /// In kk, this message translates to:
  /// **'Мұрағат'**
  String get adminPaidDamageAssessmentStatusArchive;

  /// No description provided for @adminPaidDamageAssessmentEmpty.
  ///
  /// In kk, this message translates to:
  /// **'Өтінімдер әзірге жоқ'**
  String get adminPaidDamageAssessmentEmpty;

  /// No description provided for @adminPreliminaryAssessmentLabel.
  ///
  /// In kk, this message translates to:
  /// **'Алдын ала бағалау'**
  String get adminPreliminaryAssessmentLabel;

  /// No description provided for @adminFreeDamageAssessmentListTitle.
  ///
  /// In kk, this message translates to:
  /// **'Тегін бағалау өтінімдері'**
  String get adminFreeDamageAssessmentListTitle;

  /// No description provided for @adminUtsAssessmentListTitle.
  ///
  /// In kk, this message translates to:
  /// **'УТС бағалау өтінімдері'**
  String get adminUtsAssessmentListTitle;

  /// No description provided for @adminEstimateCreateTitle.
  ///
  /// In kk, this message translates to:
  /// **'Өтінім жасау'**
  String get adminEstimateCreateTitle;

  /// No description provided for @adminEstimateEditTitle.
  ///
  /// In kk, this message translates to:
  /// **'Өтінімді өзгерту'**
  String get adminEstimateEditTitle;

  /// No description provided for @adminEstimateTypeLabel.
  ///
  /// In kk, this message translates to:
  /// **'Бағалау түрі'**
  String get adminEstimateTypeLabel;

  /// No description provided for @adminEstimateTypeHint.
  ///
  /// In kk, this message translates to:
  /// **'Бағалау түрін таңдаңыз'**
  String get adminEstimateTypeHint;

  /// No description provided for @adminEstimateKindDamageEstimate.
  ///
  /// In kk, this message translates to:
  /// **'Ақылы залал бағалау'**
  String get adminEstimateKindDamageEstimate;

  /// No description provided for @adminEstimateKindFreeDamage.
  ///
  /// In kk, this message translates to:
  /// **'Тегін залал бағалау'**
  String get adminEstimateKindFreeDamage;

  /// No description provided for @adminEstimateKindMarketValue.
  ///
  /// In kk, this message translates to:
  /// **'Нарықтық құнды бағалау'**
  String get adminEstimateKindMarketValue;

  /// No description provided for @adminEstimateKindLossValue.
  ///
  /// In kk, this message translates to:
  /// **'УТС бағалау'**
  String get adminEstimateKindLossValue;

  /// No description provided for @adminEstimateIdCardLabel.
  ///
  /// In kk, this message translates to:
  /// **'Жеке куәлік'**
  String get adminEstimateIdCardLabel;

  /// No description provided for @adminEstimateTechPassportLabel.
  ///
  /// In kk, this message translates to:
  /// **'Техпаспорт'**
  String get adminEstimateTechPassportLabel;

  /// No description provided for @adminEstimateInsuranceAssessmentLabel.
  ///
  /// In kk, this message translates to:
  /// **'Сақтандыру бағалауы'**
  String get adminEstimateInsuranceAssessmentLabel;

  /// No description provided for @adminEstimateDocumentsSection.
  ///
  /// In kk, this message translates to:
  /// **'Құжаттарды жүктеу'**
  String get adminEstimateDocumentsSection;

  /// No description provided for @adminEstimateCreateSuccess.
  ///
  /// In kk, this message translates to:
  /// **'Өтінім сәтті жасалды!'**
  String get adminEstimateCreateSuccess;

  /// No description provided for @adminEstimateAdminCommentLabel.
  ///
  /// In kk, this message translates to:
  /// **'Ішкі пікір'**
  String get adminEstimateAdminCommentLabel;

  /// No description provided for @adminEstimateOwnerFioLabel.
  ///
  /// In kk, this message translates to:
  /// **'Иесінің АТЫ-ЖӨНІ'**
  String get adminEstimateOwnerFioLabel;

  /// No description provided for @adminEstimatePaymentReceiptLabel.
  ///
  /// In kk, this message translates to:
  /// **'Төлем чегі'**
  String get adminEstimatePaymentReceiptLabel;

  /// No description provided for @adminEstimateCarPhotosLabel.
  ///
  /// In kk, this message translates to:
  /// **'Автомобиль фотосы (жаңа қосу)'**
  String get adminEstimateCarPhotosLabel;

  /// No description provided for @adminEstimateReportLabel.
  ///
  /// In kk, this message translates to:
  /// **'Бағалау есебі'**
  String get adminEstimateReportLabel;

  /// No description provided for @adminEstimateDefectActLabel.
  ///
  /// In kk, this message translates to:
  /// **'Дефектілік акт'**
  String get adminEstimateDefectActLabel;

  /// No description provided for @adminEstimateDocumentsNotFound.
  ///
  /// In kk, this message translates to:
  /// **'Құжаттар табылмады'**
  String get adminEstimateDocumentsNotFound;

  /// No description provided for @adminEstimateDocumentNotFound.
  ///
  /// In kk, this message translates to:
  /// **'Құжат табылмады'**
  String get adminEstimateDocumentNotFound;

  /// No description provided for @adminEstimateAddFiles.
  ///
  /// In kk, this message translates to:
  /// **'Файлдарды таңдау'**
  String get adminEstimateAddFiles;

  /// No description provided for @adminEstimateStatusHint.
  ///
  /// In kk, this message translates to:
  /// **'Мәртебені таңдаңыз'**
  String get adminEstimateStatusHint;

  /// No description provided for @eulaTitle.
  ///
  /// In kk, this message translates to:
  /// **'End User License Agreement (EULA)'**
  String get eulaTitle;

  /// No description provided for @eulaAgree.
  ///
  /// In kk, this message translates to:
  /// **'Келісемін'**
  String get eulaAgree;

  /// No description provided for @eulaClose.
  ///
  /// In kk, this message translates to:
  /// **'Жабу'**
  String get eulaClose;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'kk', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'kk':
      return AppLocalizationsKk();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
