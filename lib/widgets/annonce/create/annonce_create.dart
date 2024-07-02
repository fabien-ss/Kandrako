import 'package:flutter/material.dart';
import 'package:kandrako/appTheme/colors.dart';
import 'package:kandrako/widgets/annonce/create/step/step_1.dart';
import 'package:kandrako/widgets/annonce/create/step/step_2.dart';
import 'package:kandrako/widgets/annonce/create/step/step_3.dart';
import 'package:kandrako/widgets/annonce/create/step/step_4.dart';
import 'package:kandrako/widgets/annonce/liste/annonce_liste.dart';
import 'package:kandrako/widgets/appBar/top_app_bar.dart';
import 'package:kandrako/widgets/button/button_primary.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class AnnonceCreate extends StatefulWidget {
  const AnnonceCreate({super.key});

  @override
  _AnnonceCreateState createState() => _AnnonceCreateState();
}

class _AnnonceCreateState extends State<AnnonceCreate> {
  final PageController _pageController = PageController();

  int _currentStep = 0;
  
  void handleFirstStep() {
    _nextStep();
  }

  void handleSecondStep() {
    _nextStep();
  }

  void handleThirdStep() {
    _nextStep();
  }

  void handleFourthStep() {

  }

  List<Widget> get _steps {
    return [
      Step1(onNextStep: handleFirstStep),
      Step2(onNextStep: handleSecondStep),
      Step3(onNextStep: handleThirdStep),
      Step4(onNextStep: handleFourthStep),
    ];
  }

  void _nextStep() {
    if (_currentStep < _steps.length - 1) {
      setState(() {
        _currentStep++;
      });
      _pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  void _previousStep(){
    if (_currentStep > 0) {
      setState(() {
        _currentStep--;
      });
      _pageController.previousPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (builder) => AnnonceListe()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(titre: "Publier une annonce", 
        onNextStep: _previousStep
      ).get(context),
      backgroundColor: blueColor,
      body: Container(
        child: PageView(
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          children: _steps,
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.all(16),
        child:
          StepProgressIndicator(
            totalSteps: _steps.length,
            unselectedColor: Colors.grey,
            selectedColor: blueColor,
            currentStep: _currentStep + 1,
            size: 5,
            
            padding: 5,
          ),
      ),
    );
  }
}
