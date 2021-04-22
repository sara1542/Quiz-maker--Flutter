class Question{
  String _question;
  List<String> _possibleAnswers;
  String _correctAns;

  Question(this._question,this._possibleAnswers,this._correctAns);

  get question => this._question;
  get correctAns => this._correctAns;
  get possibleAnswers => this._possibleAnswers;
}