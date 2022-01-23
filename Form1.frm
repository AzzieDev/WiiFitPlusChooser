VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Wii Fit Plus Chooser"
   ClientHeight    =   855
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   2880
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   855
   ScaleWidth      =   2880
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Click for a Mini Game"
      Height          =   855
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   2895
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command1_Click()
Call Form_Load
End Sub

Private Sub Form_Load()
Dim MyLines() As String
'Randomize (Timer)
Open App.Path & "/list.txt" For Input As #1
MyLines = Split(Input(LOF(1), 1), vbNewLine)
Close #1
RandomLine = MyLines(Fix((UBound(MyLines) + 1) * Rnd))
Command1.Caption = RandomLine
End Sub
