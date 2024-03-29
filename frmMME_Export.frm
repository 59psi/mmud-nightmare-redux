VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form frmMME_Export 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Export to MMUD Explorer"
   ClientHeight    =   5385
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5520
   ClipControls    =   0   'False
   Icon            =   "frmMME_Export.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   5385
   ScaleWidth      =   5520
   Begin VB.Frame fraSpecial 
      Caption         =   "Special Export Options"
      Height          =   1995
      Left            =   120
      TabIndex        =   30
      Top             =   2040
      Visible         =   0   'False
      Width           =   5235
      Begin VB.CommandButton cmdQ 
         Caption         =   "Help"
         Height          =   375
         Left            =   600
         TabIndex        =   40
         Top             =   1140
         Width           =   795
      End
      Begin VB.CheckBox chkOnly 
         Caption         =   "Shops"
         Enabled         =   0   'False
         Height          =   195
         Index           =   7
         Left            =   3600
         TabIndex        =   39
         Top             =   1260
         Width           =   1215
      End
      Begin VB.CheckBox chkOnly 
         Caption         =   "Export Only ..."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   0
         Left            =   2280
         TabIndex        =   38
         Top             =   300
         Width           =   2355
      End
      Begin VB.CheckBox chkOnly 
         Caption         =   "Races"
         Enabled         =   0   'False
         Height          =   195
         Index           =   6
         Left            =   3600
         TabIndex        =   37
         Top             =   960
         Value           =   1  'Checked
         Width           =   1215
      End
      Begin VB.CheckBox chkOnly 
         Caption         =   "Classes"
         Enabled         =   0   'False
         Height          =   195
         Index           =   5
         Left            =   3600
         TabIndex        =   36
         Top             =   660
         Value           =   1  'Checked
         Width           =   1215
      End
      Begin VB.CheckBox chkOnly 
         Caption         =   "Rooms"
         Enabled         =   0   'False
         Height          =   195
         Index           =   4
         Left            =   2280
         TabIndex        =   35
         Top             =   1560
         Width           =   1215
      End
      Begin VB.CheckBox chkOnly 
         Caption         =   "Spells"
         Enabled         =   0   'False
         Height          =   195
         Index           =   3
         Left            =   2280
         TabIndex        =   34
         Top             =   1260
         Width           =   1215
      End
      Begin VB.CheckBox chkOnly 
         Caption         =   "Monsters"
         Enabled         =   0   'False
         Height          =   195
         Index           =   2
         Left            =   2280
         TabIndex        =   33
         Top             =   960
         Width           =   1215
      End
      Begin VB.CheckBox chkOnly 
         Caption         =   "Items"
         Enabled         =   0   'False
         Height          =   195
         Index           =   1
         Left            =   2280
         TabIndex        =   32
         Top             =   660
         Width           =   1215
      End
      Begin VB.CheckBox chkLegit 
         Caption         =   """Legit"" Export"
         Height          =   255
         Left            =   240
         TabIndex        =   31
         Top             =   360
         Width           =   1395
      End
   End
   Begin VB.CommandButton cmdSpecialExport 
      Caption         =   "Special Export"
      Height          =   435
      Left            =   4080
      TabIndex        =   29
      Top             =   1500
      Width           =   1335
   End
   Begin VB.CommandButton cmdNote 
      Caption         =   "ReadMe"
      Height          =   315
      Left            =   2280
      TabIndex        =   28
      Top             =   4260
      Width           =   975
   End
   Begin VB.CheckBox chkExcludeRooms 
      Caption         =   "Enable"
      Height          =   195
      Left            =   300
      TabIndex        =   27
      Top             =   2340
      Width           =   1335
   End
   Begin VB.TextBox txtUpdateURL 
      Height          =   285
      Left            =   120
      MaxLength       =   254
      TabIndex        =   24
      Text            =   "http://www.mudinfo.net/mmudexp.php"
      Top             =   1620
      Width           =   3795
   End
   Begin VB.CommandButton cmdSaveConfig 
      Caption         =   "&Save Config ..."
      Height          =   435
      Left            =   4080
      TabIndex        =   12
      Top             =   780
      Width           =   1335
   End
   Begin VB.CommandButton cmdSelectConfig 
      Caption         =   "&Load Config ..."
      Height          =   435
      Left            =   4080
      TabIndex        =   11
      Top             =   180
      Width           =   1335
   End
   Begin VB.TextBox txtConfigFile 
      BackColor       =   &H8000000F&
      Height          =   315
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   10
      Top             =   300
      Width           =   3795
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   2700
      Top             =   60
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   3240
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CancelError     =   -1  'True
   End
   Begin VB.TextBox txtCustom 
      Height          =   285
      Left            =   1860
      MaxLength       =   20
      TabIndex        =   3
      Top             =   960
      Width           =   2055
   End
   Begin VB.TextBox txtDBVersion 
      Height          =   285
      Left            =   120
      MaxLength       =   20
      TabIndex        =   2
      Top             =   960
      Width           =   1575
   End
   Begin MSComctlLib.ProgressBar ProgressBar 
      Height          =   315
      Left            =   60
      TabIndex        =   6
      Top             =   4740
      Visible         =   0   'False
      Width           =   5400
      _ExtentX        =   9525
      _ExtentY        =   556
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "&Close"
      Height          =   495
      Left            =   4020
      TabIndex        =   1
      Top             =   4140
      Width           =   1335
   End
   Begin VB.CommandButton cmdGo 
      Caption         =   "&Export to MME"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   4140
      Width           =   1395
   End
   Begin VB.Frame fraRooms 
      Caption         =   "Exclude Rooms"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1995
      Left            =   120
      TabIndex        =   13
      Top             =   2040
      Width           =   5235
      Begin VB.CheckBox chkNoRooms 
         Caption         =   "No Rooms"
         Enabled         =   0   'False
         Height          =   195
         Left            =   180
         TabIndex        =   26
         Top             =   600
         Width           =   1095
      End
      Begin MSComctlLib.ListView lvExludedRooms 
         Height          =   1635
         Left            =   2700
         TabIndex        =   23
         Top             =   240
         Width           =   2415
         _ExtentX        =   4260
         _ExtentY        =   2884
         View            =   3
         LabelEdit       =   1
         LabelWrap       =   -1  'True
         HideSelection   =   0   'False
         FullRowSelect   =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   1
         Enabled         =   0   'False
         NumItems        =   0
      End
      Begin VB.TextBox txtMap 
         Enabled         =   0   'False
         Height          =   285
         Left            =   900
         TabIndex        =   21
         Text            =   "1"
         Top             =   1500
         Width           =   615
      End
      Begin VB.CommandButton cmdRemove 
         Caption         =   "&Remove"
         Enabled         =   0   'False
         Height          =   315
         Left            =   1680
         TabIndex        =   18
         Top             =   1380
         Width           =   855
      End
      Begin VB.CommandButton cmdClear 
         Caption         =   "Clear"
         Enabled         =   0   'False
         Height          =   315
         Left            =   1680
         TabIndex        =   17
         Top             =   900
         Width           =   855
      End
      Begin VB.CommandButton cmdAdd 
         Caption         =   "&Add -->"
         Enabled         =   0   'False
         Height          =   315
         Left            =   1680
         TabIndex        =   16
         Top             =   420
         Width           =   855
      End
      Begin VB.TextBox txtTo 
         Enabled         =   0   'False
         Height          =   315
         Left            =   900
         TabIndex        =   15
         Text            =   "2"
         Top             =   1080
         Width           =   615
      End
      Begin VB.TextBox txtFrom 
         Enabled         =   0   'False
         Height          =   315
         Left            =   180
         TabIndex        =   14
         Text            =   "1"
         Top             =   1080
         Width           =   615
      End
      Begin VB.Label lblExRooms 
         Caption         =   "Map:"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   2
         Left            =   180
         TabIndex        =   22
         Top             =   1500
         Width           =   615
      End
      Begin VB.Label lblExRooms 
         Caption         =   "End"
         Enabled         =   0   'False
         Height          =   195
         Index           =   1
         Left            =   900
         TabIndex        =   20
         Top             =   900
         Width           =   555
      End
      Begin VB.Label lblExRooms 
         Caption         =   "Start"
         Enabled         =   0   'False
         Height          =   195
         Index           =   0
         Left            =   180
         TabIndex        =   19
         Top             =   900
         Width           =   735
      End
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Database Update Webpage"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   1
      Left            =   120
      TabIndex        =   25
      Top             =   1380
      Width           =   2370
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Configuration File"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   1
      Left            =   120
      TabIndex        =   9
      Top             =   60
      Width           =   1500
   End
   Begin VB.Label lblPanel 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   255
      Index           =   1
      Left            =   2640
      TabIndex        =   8
      Top             =   5160
      Width           =   2895
   End
   Begin VB.Label lblPanel 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   255
      Index           =   0
      Left            =   -60
      TabIndex        =   7
      Top             =   5160
      Width           =   2715
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "BBS/Database Name"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   0
      Left            =   1860
      TabIndex        =   5
      Top             =   720
      Width           =   1815
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Dat Version"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   0
      Left            =   120
      TabIndex        =   4
      Top             =   720
      Width           =   1005
   End
End
Attribute VB_Name = "frmMME_Export"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Base 0
Option Explicit

Const nPasses = 10

Dim DB As Database
Dim tabItems As Recordset
Dim tabClasses As Recordset
Dim tabRaces As Recordset
Dim tabSpells As Recordset
Dim tabInfo As Recordset
Dim tabMonsters As Recordset
Dim tabShops As Recordset
Dim tabRooms As Recordset
Dim tabTBInfo As Recordset

Dim bAllInGame As Boolean
Dim bCheckSave As Boolean
Dim bUpdateExistingADB As Boolean
Dim sDataSource As String
Dim sExportPath As String
Dim sConfigFile As String
Dim bStopExport As Boolean

Dim ExcludedRooms() As Long
Dim SpellInGame() As Boolean
Dim MonsterInGame() As Boolean
Dim ItemInGame() As Boolean
Dim TBScanned() As Boolean
Dim TBRandom() As Boolean
Dim TBCommands() As Boolean
Dim MonGroup() As String

Dim SpellFromContainerRef() As Boolean
Dim TBFromBadSource() As Boolean
'Dim RoomInGame() As Boolean

Dim nNewMax As Integer
Dim MaxValue As Double
Dim nScaleCount As Integer
Dim nScale As Integer

Private Enum MarkType
    Spell = 0
    Item = 1
    Monster = 2
    TextBlock = 3
End Enum

Private Sub LoadConfig(ByVal sFile As String)
Dim sLine As String, x As Long, y As Long, oLI As ListItem
Dim sTemp As String, sArray() As String, fso As FileSystemObject
On Error GoTo Error:

sConfigFile = sFile
If Len(sConfigFile) > 40 Then
    txtConfigFile.Text = Left(sConfigFile, 5) & "..." & Right(sConfigFile, 35)
Else
    txtConfigFile.Text = sConfigFile
End If

Set fso = CreateObject("Scripting.FileSystemObject")

sExportPath = ReadINI("Settings", "ExportPath", sFile)
If Not fso.FolderExists(sExportPath) Then sExportPath = App.Path

sLine = ReadINI("Settings", "CustomName", sFile)
If Not sLine = "0" Then
    txtCustom.Text = sLine
Else
    txtCustom.Text = "My BBS Name"
End If

sLine = ReadINI("Settings", "DB_Ver", sFile)
If Not sLine = "0" Then
    txtDBVersion.Text = sLine
Else
    txtDBVersion.Text = FriendlyDatVersion(eDatFileVersion)
End If

sLine = ReadINI("Settings", "UpdateURL", sFile)
If Not sLine = "0" Then txtUpdateURL.Text = sLine

chkExcludeRooms.Value = ReadINI("Settings", "EnableExcludeRooms", sFile)
chkLegit.Value = ReadINI("Settings", "Legit", sFile)
chkNoRooms.Value = ReadINI("Settings", "NoRooms", sFile)

lvExludedRooms.ListItems.clear
sLine = ReadINI("Settings", "ExcludedRooms", sFile)
If Len(sLine) > 5 Then '1/1/1, = 6 chars
    x = 0
    Do While Not InStr(x + 1, sLine, ",") = 0
        y = InStr(x + 1, sLine, ",")
        sTemp = Mid(sLine, x + 1, y - x - 1)
        sArray() = Split(sTemp, "/", 3)
        
        Set oLI = lvExludedRooms.ListItems.add
        oLI.Text = sArray(0)
        oLI.ListSubItems.add 1, , sArray(1)
        oLI.ListSubItems.add 2, , sArray(2)
        
        Set oLI = Nothing
        x = y
    Loop
End If

bCheckSave = False

out:
Erase sArray()
Set oLI = Nothing
Set fso = Nothing
Exit Sub
Error:
Call HandleError("LoadConfig")
Resume out:
    
End Sub
Private Function SaveConfig(ByVal sFile As String, _
    Optional ByVal bPromptFile As Boolean) As Integer
Dim sTemp As String, x As Integer
On Error GoTo Error:

If bPromptFile Then
    CommonDialog1.Filter = "INI Files (*.ini)|*.ini"
    CommonDialog1.DialogTitle = "Select MME Configuration File ..."
    CommonDialog1.FileName = sConfigFile
    CommonDialog1.InitDir = sConfigFile
    
    On Error GoTo canceled:
    CommonDialog1.ShowSave
    If CommonDialog1.FileName = "" Then GoTo canceled:
    
    On Error GoTo Error:
    
    sTemp = CommonDialog1.FileName
    If Right(sTemp, 4) <> ".ini" Then sTemp = sTemp & ".ini"
    
    sFile = sTemp
End If

sConfigFile = sFile
If Len(sConfigFile) > 40 Then
    txtConfigFile.Text = Left(sConfigFile, 5) & "..." & Right(sConfigFile, 35)
Else
    txtConfigFile.Text = sConfigFile
End If

Call WriteINI("Settings", "CustomName", txtCustom.Text, sFile)
Call WriteINI("Settings", "Legit", chkLegit.Value, sFile)
Call WriteINI("Settings", "DB_Ver", txtDBVersion.Text, sFile)
Call WriteINI("Settings", "UpdateURL", txtUpdateURL.Text, sFile)
Call WriteINI("Settings", "EnableExcludeRooms", chkExcludeRooms.Value, sFile)
Call WriteINI("Settings", "ExportPath", sExportPath, sFile)
Call WriteINI("Settings", "NoRooms", chkNoRooms.Value, sFile)

sTemp = ""
If lvExludedRooms.ListItems.Count > 0 Then
    For x = 1 To lvExludedRooms.ListItems.Count
        sTemp = sTemp & lvExludedRooms.ListItems(x).Text _
            & "/" & lvExludedRooms.ListItems(x).ListSubItems(1).Text _
            & "/" & lvExludedRooms.ListItems(x).ListSubItems(2).Text _
            & ","
    Next x
    Call WriteINI("Settings", "ExcludedRooms", sTemp, sFile)
Else
    Call WriteINI("Settings", "ExcludedRooms", "0", sFile)
End If

bCheckSave = False

GoTo out:

canceled:
SaveConfig = -1

out:
Exit Function
Error:
Call HandleError("SaveConfig")
Resume out:

End Function

Private Sub chkExcludeRooms_Click()

If chkExcludeRooms.Value = 1 Then
    Call ExcludeRoomsEnable(True)
Else
    Call ExcludeRoomsEnable(False)
End If

bCheckSave = True

End Sub

Private Sub ExcludeRoomsEnable(ByVal bTrue As Boolean)
Dim x As Integer

On Error GoTo Error:

If bTrue = True Then
    fraRooms.Enabled = True
    txtFrom.Enabled = True
    txtTo.Enabled = True
    txtMap.Enabled = True
    cmdAdd.Enabled = True
    cmdRemove.Enabled = True
    cmdClear.Enabled = True
    lvExludedRooms.Enabled = True
    chkNoRooms.Enabled = True
    
    For x = 0 To 2
        lblExRooms(x).Enabled = True
    Next x
Else
    fraRooms.Enabled = False
    txtFrom.Enabled = False
    txtTo.Enabled = False
    txtMap.Enabled = False
    cmdAdd.Enabled = False
    cmdRemove.Enabled = False
    cmdClear.Enabled = False
    lvExludedRooms.Enabled = False
    chkNoRooms.Enabled = False
    
    For x = 0 To 2
        lblExRooms(x).Enabled = False
    Next x
End If

Exit Sub
Error:
Call HandleError("ExcludeRoomsEnable")

End Sub
Private Sub chkLegit_Click()

If chkLegit.Value = 1 Then
    Call EnableLegit(True)
Else
    Call EnableLegit(False)
End If

bCheckSave = True
End Sub

Private Sub EnableLegit(ByVal bTrue As Boolean)
On Error GoTo Error:

If bTrue Then
    txtCustom.Enabled = False
    txtUpdateURL.Enabled = False
    fraRooms.Enabled = False
    
    chkExcludeRooms.Enabled = False
    Call ExcludeRoomsEnable(False)
    chkOnly(0).Value = 0
    chkOnly(0).Enabled = False
Else
    txtCustom.Enabled = True
    txtUpdateURL.Enabled = True
    
    chkExcludeRooms.Enabled = True
    If chkExcludeRooms.Value = 1 Then
        Call ExcludeRoomsEnable(True)
    Else
        Call ExcludeRoomsEnable(False)
    End If
    
    lvExludedRooms.Enabled = True
    chkOnly(0).Enabled = True
End If


Exit Sub
Error:
Call HandleError("EnableLegit")
End Sub
Private Sub chkNoRooms_Click()
bCheckSave = True
End Sub

Private Sub chkOnly_Click(Index As Integer)
Dim bAction As Boolean, x As Integer

Select Case Index
    Case 0:
        If chkOnly(0).Value = 1 Then bAction = True
        
        For x = 1 To 7
            If Not x = 5 And Not x = 6 Then chkOnly(x).Enabled = bAction
        Next x
    Case 1: 'items
        If chkOnly(1).Value = 0 Then chkOnly(7).Value = 0
    Case 7: 'shops
        If chkOnly(7).Value = 1 Then chkOnly(1).Value = 1
End Select

End Sub

Private Sub cmdNote_Click()
MsgBox "Excluded rooms will still export the room names so monsters/shops/regen info/etc " _
    & "show a nice name instead of 'Room: 1/234'.  If the 'No Rooms' options is enabled " _
    & "then no room information will be exported at all (this option exists mainly to " _
    & "save export time for personal exports).", vbInformation
End Sub

Private Sub cmdQ_Click()
MsgBox "If you export only one or more databases, no cross-referencing will be done." _
    & "  This is for people who want get info on records and wish to use MME's style of viewing/copying stats without taking the time to compile a full MME file." _
    & vbCrLf & vbCrLf & "The 'Legit Export' option is basically just for me (syntax) when " _
    & "I make the default data files to post on MME's website.", vbInformation
End Sub

Private Sub cmdSaveConfig_Click()
Call SaveConfig(sConfigFile, True)
End Sub


Private Sub Command1_Click()

End Sub

Private Sub cmdSpecialExport_Click()
If fraSpecial.Visible Then
    fraSpecial.Visible = False
Else
    fraSpecial.Visible = True
End If
End Sub

Private Sub Form_Load()
On Error Resume Next
Dim fso As FileSystemObject, x As Integer

lvExludedRooms.ColumnHeaders.clear
lvExludedRooms.ColumnHeaders.add , , "Map", 600
lvExludedRooms.ColumnHeaders.add , , "From", 700
lvExludedRooms.ColumnHeaders.add , , "To", 700

Set fso = CreateObject("Scripting.FileSystemObject")

sConfigFile = ReadINI("Options", "MME-ConfigFile")
If Not fso.FileExists(sConfigFile) Then sConfigFile = App.Path & "\MME-Config.ini"

Me.Left = ReadINI("Windows", "MME-Left")
Me.Top = ReadINI("Windows", "MME-Top")

Call LoadConfig(sConfigFile)

Me.Show
Me.SetFocus
'cmdCancel.SetFocus

Set fso = Nothing
End Sub

Private Sub cmdAdd_Click()
Dim oLI As ListItem
Dim nFrom As Long, nTo As Long, nMap As Long
On Error GoTo Error:

nFrom = Val(txtFrom.Text)
nTo = Val(txtTo.Text)
nMap = Val(txtMap.Text)

If nTo < 1 Then Exit Sub
If nFrom < 1 Then Exit Sub
If nTo < nFrom Then Exit Sub
If nMap < 1 Then Exit Sub

Set oLI = lvExludedRooms.ListItems.add
oLI.Text = nMap
oLI.ListSubItems.add 1, , nFrom
oLI.ListSubItems.add 2, , nTo

bCheckSave = True

out:
Set oLI = Nothing
Exit Sub
Error:
Call HandleError("cmdAdd_Click")
Resume out:

End Sub

Private Sub cmdClear_Click()
lvExludedRooms.ListItems.clear
bCheckSave = True
End Sub

Private Sub cmdRemove_Click()
On Error GoTo Error:

If Not lvExludedRooms.SelectedItem Is Nothing Then
    lvExludedRooms.ListItems.Remove lvExludedRooms.SelectedItem.Index
    bCheckSave = True
End If

out:
Exit Sub
Error:
Call HandleError("cmdRemove_Click")
Resume out:
End Sub



Private Sub txtConfigFile_GotFocus()
Call SelectAll(txtConfigFile)
End Sub

Private Sub txtCustom_Change()
bCheckSave = True
End Sub

Private Sub txtDBVersion_Change()
bCheckSave = True
End Sub

Private Sub txtTo_GotFocus()
Call SelectAll(txtTo)

End Sub

Private Sub txtTo_KeyPress(KeyAscii As Integer)
KeyAscii = NumberKeysOnly(KeyAscii)
End Sub

Private Sub txtFrom_GotFocus()
Call SelectAll(txtFrom)

End Sub

Private Sub txtFrom_KeyPress(KeyAscii As Integer)
KeyAscii = NumberKeysOnly(KeyAscii)
End Sub

Private Sub cmdSelectConfig_Click()
Dim sTemp As String, nTemp As Integer
On Error GoTo Error:

If bCheckSave Then
    nTemp = MsgBox("Save current config file first?", vbYesNoCancel + vbQuestion, "Save MME Config?")
    If nTemp = vbYes Then
        nTemp = SaveConfig(sConfigFile)
        If nTemp = -1 Then Exit Sub
    ElseIf nTemp = vbCancel Then
        Exit Sub
    End If
End If

CommonDialog1.Filter = "INI Files (*.ini)|*.ini"
CommonDialog1.DialogTitle = "Select MME Configuration File ..."
CommonDialog1.FileName = sConfigFile
CommonDialog1.InitDir = sConfigFile

On Error GoTo canceled:
CommonDialog1.ShowOpen
If CommonDialog1.FileName = "" Then GoTo canceled:

On Error GoTo Error:

sTemp = CommonDialog1.FileName
If Right(sTemp, 4) <> ".ini" Then sTemp = sTemp & ".ini"

Call LoadConfig(sTemp)

canceled:

out:
Exit Sub
Error:
Call HandleError("cmdSelectConfig_Click")
Resume out:
End Sub


Private Sub cmdGo_Click()
On Error GoTo Error:
Dim x As Integer, sPath As String
Dim sNewPath() As String
Dim StartTime As Long, nTotalTime As Double, sTotalTime As String
Dim nTmp As Integer, nStatus As Integer, frmForm As Form

'UnloadForms (Me.Name)
Unload frmProgressBar
For Each frmForm In Forms
    If Not frmForm Is Me And Not frmForm Is frmMain Then
        frmForm.WindowState = vbMinimized
        frmForm.Hide
        frmForm.Enabled = False
    End If
Next

txtConfigFile.Enabled = False
cmdGo.Enabled = False
txtDBVersion.Enabled = False
txtCustom.Enabled = False
cmdSelectConfig.Enabled = False
cmdSaveConfig.Enabled = False
chkLegit.Enabled = False
cmdNote.Enabled = False
Call ExcludeRoomsEnable(False)
chkExcludeRooms.Enabled = False
txtUpdateURL.Enabled = False
cmdCancel.Caption = "&Cancel"

Call LockMenus
Timer1.Enabled = True
bStopExport = False

StartTime = Timer
DoEvents

nTmp = CreateDatabase
Select Case nTmp
    Case 3: 'cancel
        GoTo ReEnable:
    Case 2: 'yes (update existing)
        bUpdateExistingADB = True
    Case 1: 'no (create new)
        lblPanel(1).Caption = "Creating Tables..."
        nTmp = CreateTables
        If nTmp = False Then
            MsgBox "Access Database was not created successfully."
            GoTo ReEnable:
        End If
    Case Else: 'else
        MsgBox "Access Database was not created successfully."
        GoTo ReEnable:
End Select

If InStr(1, sDataSource, "\") > 0 Then
    sNewPath = Split(sDataSource, "\")
    sExportPath = sNewPath(LBound(sNewPath()))
    For x = LBound(sNewPath()) + 1 To UBound(sNewPath()) - 1
        sExportPath = sExportPath & "\" & sNewPath(x)
    Next x
    Call WriteINI("Settings", "ExportPath", sConfigFile)
End If
Erase sNewPath()

Call WriteINI("Settings", "FileName", sDataSource, sConfigFile)

Set DB = OpenDatabase(sDataSource)
Call OpenTables

If bUpdateExistingADB Then
    If CheckVersion = False Then
        Call CloseDB(True)
        GoTo ReEnable:
    End If
End If

MaxValue = CalcTotalRecords '* 5
nScale = 0
If MaxValue > MaxInt Then
    If MaxValue / 2 < MaxInt Then
        nScale = 2
        nNewMax = MaxValue / 2
    ElseIf MaxValue / 4 < MaxInt Then
        nScale = 4
        nNewMax = MaxValue / 4
    ElseIf MaxValue / 8 < MaxInt Then
        nScale = 8
        nNewMax = MaxValue / 8
    ElseIf MaxValue / 10 < MaxInt Then
        nScale = 10
        nNewMax = MaxValue / 10
    Else
        MaxValue = MaxInt
    End If
Else
    nNewMax = MaxValue
End If

nScaleCount = 1
ProgressBar.Value = 0
ProgressBar.Min = 0
ProgressBar.Max = nNewMax
ProgressBar.Visible = True

Erase MonGroup()
Erase MonsterInGame()
Erase ItemInGame()
Erase SpellInGame()
Erase TBScanned()
Erase TBRandom()
Erase TBCommands()
Erase ExcludedRooms()

Erase SpellFromContainerRef()
Erase TBFromBadSource()
'ReDim MonGroup(39, 9999)
'ReDim MonsterInGame(2000)
'ReDim SpellInGame(2000)
'ReDim ItemInGame(2500)
'ReDim TBScanned(15000, 10)
'ReDim TBRandom(15000, 10)
ReDim MonGroup(39, 9999)


If chkLegit.Value = 0 _
    And chkNoRooms.Value = 0 _
    And chkExcludeRooms.Value = 1 _
    And lvExludedRooms.ListItems.Count > 0 Then
    
    ReDim ExcludedRooms(1 To 3, lvExludedRooms.ListItems.Count)
    For x = 1 To lvExludedRooms.ListItems.Count
        ExcludedRooms(1, x) = Val(lvExludedRooms.ListItems(x).Text)
        ExcludedRooms(2, x) = Val(lvExludedRooms.ListItems(x).ListSubItems(1).Text)
        ExcludedRooms(3, x) = Val(lvExludedRooms.ListItems(x).ListSubItems(2).Text)
    Next x
Else
    ReDim ExcludedRooms(1, 0)
    ExcludedRooms(1, 0) = -1
End If

nStatus = BTRCALL(BGETLAST, MonsterPosBlock, Monsterdatabuf, Len(Monsterdatabuf), ByVal MonsterKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then
    ReDim MonsterInGame(2000)
Else
    MonsterRowToStruct Monsterdatabuf.buf
    ReDim MonsterInGame(Monsterrec.Number)
End If

nStatus = BTRCALL(BGETLAST, SpellPosBlock, Spelldatabuf, Len(Spelldatabuf), ByVal SpellKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then
    ReDim SpellInGame(2000)
    ReDim SpellFromContainerRef(2000)
Else
    SpellRowToStruct Spelldatabuf.buf
    ReDim SpellInGame(Spellrec.Number)
    ReDim SpellFromContainerRef(Spellrec.Number)
End If

nStatus = BTRCALL(BGETLAST, ItemPosBlock, Itemdatabuf, Len(Itemdatabuf), ByVal ItemKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then
    ReDim ItemInGame(2500)
Else
    ItemRowToStruct Itemdatabuf.buf
    ReDim ItemInGame(Itemrec.Number)
End If

nStatus = BTRCALL(BGETLAST, TextblockPosBlock, TextblockDataBuf, Len(TextblockDataBuf), ByVal TextblockKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then
    ReDim TBScanned(15000, 10)
    ReDim TBRandom(15000)
    ReDim TBCommands(15000)
    ReDim TBFromBadSource(15000)
Else
    TextblockRowToStruct TextblockDataBuf.buf
    ReDim TBScanned(TextblockRec.Number, 10)
    ReDim TBRandom(TextblockRec.Number)
    ReDim TBCommands(TextblockRec.Number)
    ReDim TBFromBadSource(TextblockRec.Number)
End If

'''''''ReDim RoomInGame(17, 15000)

If chkOnly(0).Value = 1 Then
    bAllInGame = True
Else
    bAllInGame = False
End If

DoEvents
If (chkOnly(0).Value = 0) Or (chkOnly(0).Value = 1 And chkOnly(1).Value = 1) Then Call ExportItems
DoEvents
If bStopExport Then GoTo canceled:
If (chkOnly(0).Value = 0) Or (chkOnly(0).Value = 1 And chkOnly(3).Value = 1) Then Call ExportSpells
DoEvents
If bStopExport Then GoTo canceled:
If (chkOnly(0).Value = 0) Or (chkOnly(0).Value = 1 And chkOnly(4).Value = 1) Then Call ExportRooms
DoEvents
If bStopExport Then GoTo canceled:
Call ExportClasses
DoEvents
If bStopExport Then GoTo canceled:
Call ExportRaces
DoEvents
If bStopExport Then GoTo canceled:
If (chkOnly(0).Value = 0) Or (chkOnly(0).Value = 1 And chkOnly(7).Value = 1) Then Call ExportShops
DoEvents
If bStopExport Then GoTo canceled:
If (chkOnly(0).Value = 0) Or (chkOnly(0).Value = 1 And chkOnly(2).Value = 1) Then Call ExportMonsters
DoEvents
If bStopExport Then GoTo canceled:
Call ExportVersionInfo
If bStopExport Then GoTo canceled:
DoEvents
If chkOnly(0).Value = 0 Then Call LocateRecords
If bStopExport Then GoTo canceled:
DoEvents
If chkOnly(0).Value = 0 Then Call FillTextblockCommands
If bStopExport Then GoTo canceled:
DoEvents
Call VerifyOneRecordInDBs
Call CloseDB
DoEvents

ProgressBar.Value = ProgressBar.Max
DoEvents

nTotalTime = Timer - StartTime
sTotalTime = CStr(Round(CDbl(nTotalTime / 60), 2))
sTotalTime = Left(sTotalTime, InStr(1, sTotalTime, ".") + 2)

MsgBox "Export Complete." & vbCrLf & vbCrLf & "Total time: " & sTotalTime & " minutes.", vbInformation
GoTo ReEnable:

canceled:
Call CloseDB(True)
MsgBox "Canceled.", vbOKOnly + vbExclamation

ReEnable:
On Error Resume Next
Erase MonGroup()
Erase MonsterInGame()
Erase SpellInGame()
Erase ItemInGame()
Erase TBScanned()
Erase TBRandom()
Erase TBCommands()
Erase ExcludedRooms()
'Erase RoomInGame()
Erase SpellFromContainerRef()
Erase TBFromBadSource()

Timer1.Enabled = False
Call UnLockMenus

For Each frmForm In Forms
    If Not frmForm Is Me And Not frmForm Is frmMain Then
        'frmForm.WindowState = vbNormal
        'frmForm.Show
        frmForm.Enabled = True
    End If
Next

frmMain.Enabled = True
ProgressBar.Visible = False
lblPanel(0).Caption = ""
lblPanel(1).Caption = ""

cmdCancel.Caption = "&Close"
cmdGo.Enabled = True
cmdNote.Enabled = True
txtDBVersion.Enabled = True
chkLegit.Enabled = True
txtConfigFile.Enabled = True
'txtCustom.Enabled = True
cmdSelectConfig.Enabled = True
cmdSaveConfig.Enabled = True
'If chkLegit.Value = 0 Then Call ExcludeRoomsEnable(True)
If chkLegit.Value = 1 Then
    Call EnableLegit(True)
Else
    Call EnableLegit(False)
End If
'txtUpdateURL.Enabled = True

Set frmForm = Nothing
Exit Sub

Error:
Call HandleError
On Error Resume Next
Call CloseDB(True)
Resume ReEnable:

End Sub

Private Sub VerifyOneRecordInDBs()
Dim x As Integer
On Error GoTo Error:

If chkOnly(0).Value = 1 Then
    If tabShops.RecordCount = 0 Then
        tabShops.AddNew
        tabShops.Fields("Number") = 0
        tabShops.Fields("Name") = "filler"
        tabShops.Fields("ShopType") = 0
        tabShops.Fields("MinLVL") = 0
        tabShops.Fields("MaxLVL") = 0
        tabShops.Fields("Markup%") = 0
        tabShops.Fields("ClassRest") = 0
        tabShops.Fields("In Game") = 0
        tabShops.Fields("Assigned To") = Chr(0)
        
        For x = 0 To 19
            tabShops.Fields("Item-" & x) = 0
            tabShops.Fields("Max-" & x) = 0
            tabShops.Fields("Time-" & x) = 0
            tabShops.Fields("Amount-" & x) = 0
            tabShops.Fields("%-" & x) = 0
        Next
        
        tabShops.Update
    End If
    If tabItems.RecordCount = 0 Then
        tabItems.AddNew
        tabItems.Fields("Number") = 0
        tabItems.Fields("Name") = "filler"
        tabItems.Fields("Limit") = 0
        tabItems.Fields("Encum") = 0
        tabItems.Fields("ItemType") = 0
        tabItems.Fields("UseCount") = 0
        tabItems.Fields("Price") = 0
        tabItems.Fields("Currency") = 0
        tabItems.Fields("Min") = 0
        tabItems.Fields("Max") = 0
        tabItems.Fields("ArmourClass") = 0
        tabItems.Fields("DamageResist") = 0
        tabItems.Fields("WeaponType") = 0
        tabItems.Fields("ArmourType") = 0
        tabItems.Fields("Worn") = 0
        tabItems.Fields("Accy") = 0
        tabItems.Fields("Gettable") = 0
        tabItems.Fields("StrReq") = 0
        tabItems.Fields("Speed") = 0
        tabItems.Fields("Not Droppable") = 0
        tabItems.Fields("Destroy On Death") = 0
        tabItems.Fields("Retain After Uses") = 0
        tabItems.Fields("In Game") = 0
        tabItems.Fields("Obtained From") = Chr(0)
        
        For x = 0 To 9
            tabItems.Fields("ClassRest-" & x) = 0
        Next
        
        For x = 0 To 9
            tabItems.Fields("RaceRest-" & x) = 0
        Next
        
        For x = 0 To 9
            tabItems.Fields("NegateSpell-" & x) = 0
        Next
        
        For x = 0 To 19
            tabItems.Fields("Abil-" & x) = 0
            tabItems.Fields("AbilVal-" & x) = 0
        Next
    
        tabItems.Update
    End If
    If tabMonsters.RecordCount = 0 Then
        tabMonsters.AddNew
        tabMonsters.Fields("Number") = 0
        tabMonsters.Fields("Name") = "filler"
        tabMonsters.Fields("Weapon") = 0
        tabMonsters.Fields("ArmourClass") = 0
        tabMonsters.Fields("DamageResist") = 0
        tabMonsters.Fields("Follow%") = 0
        tabMonsters.Fields("MagicRes") = 0
        tabMonsters.Fields("EXP") = 0
        
        If eDatFileVersion >= v111j Then
            tabMonsters.Fields("ExpMulti") = 0
        End If
        
        tabMonsters.Fields("HP") = 0
        tabMonsters.Fields("GreetTXT") = 0
        tabMonsters.Fields("HPRegen") = 0
        tabMonsters.Fields("CharmLvL") = 0
        tabMonsters.Fields("Type") = 0
        tabMonsters.Fields("Undead") = 0
        tabMonsters.Fields("Align") = 0
        tabMonsters.Fields("RegenTime") = 0
        tabMonsters.Fields("R") = 0
        tabMonsters.Fields("P") = 0
        tabMonsters.Fields("G") = 0
        tabMonsters.Fields("S") = 0
        tabMonsters.Fields("C") = 0
        tabMonsters.Fields("DeathSpell") = 0
        tabMonsters.Fields("CreateSpell") = 0
        tabMonsters.Fields("In Game") = 0
        tabMonsters.Fields("Summoned By") = Chr(0)
        
        For x = 0 To 4
            tabMonsters.Fields("AttType-" & x) = 0
            tabMonsters.Fields("AttAcc-" & x) = 0
            tabMonsters.Fields("Att%-" & x) = 0
            tabMonsters.Fields("AttMin-" & x) = 0
            tabMonsters.Fields("AttMax-" & x) = 0
            tabMonsters.Fields("AttEnergy-" & x) = 0
            tabMonsters.Fields("AttHitSpell-" & x) = 0
            tabMonsters.Fields("MidSpell-" & x) = 0
            tabMonsters.Fields("MidSpell%-" & x) = 0
            tabMonsters.Fields("MidSpellLVL-" & x) = 0
        Next
        
        For x = 0 To 9
            tabMonsters.Fields("DropItem-" & x) = 0
            'tabMonsters.Fields("DropItemUses-" & x) = Monsterrec.ItemUses(x)
            tabMonsters.Fields("DropItem%-" & x) = 0
        Next
        
        For x = 0 To 9
            tabMonsters.Fields("Abil-" & x) = 0
            tabMonsters.Fields("AbilVal-" & x) = 0
        Next
        tabMonsters.Update
    End If
    If tabSpells.RecordCount = 0 Then
        tabSpells.AddNew
        tabSpells.Fields("Number") = 0
        tabSpells.Fields("Name") = "filler"
        tabSpells.Fields("Short") = Chr(0)
        tabSpells.Fields("ReqLevel") = 0
        tabSpells.Fields("EnergyCost") = 0
        tabSpells.Fields("ManaCost") = 0
        tabSpells.Fields("MinBase") = 0
        tabSpells.Fields("MaxBase") = 0
        tabSpells.Fields("Diff") = 0
        tabSpells.Fields("Targets") = 0
        tabSpells.Fields("Dur") = 0
        tabSpells.Fields("AttType") = 0
        tabSpells.Fields("Magery") = 0
        tabSpells.Fields("MageryLVL") = 0
        tabSpells.Fields("Cap") = 0
        tabSpells.Fields("MaxIncLVLs") = 0
        tabSpells.Fields("MaxInc") = 0
        tabSpells.Fields("MinIncLVLs") = 0
        tabSpells.Fields("MinInc") = 0
        tabSpells.Fields("DurIncLVLs") = 0
        tabSpells.Fields("DurInc") = 0
        tabSpells.Fields("Learnable") = 0
        tabSpells.Fields("Learned From") = Chr(0)
        tabSpells.Fields("Casted By") = Chr(0)
        
        For x = 0 To 9
            tabSpells.Fields("Abil-" & x) = 0
            tabSpells.Fields("AbilVal-" & x) = 0
        Next
    
        tabSpells.Update
    End If
'    If tabRooms.RecordCount = 0 Then
'        tabRooms.AddNew
'        tabRooms.Fields("Map Number") = 1
'        tabRooms.Fields("Room Number") = 1
'        tabRooms.Fields("Name") = "null"
'        tabRooms.Update
'    End If
End If
    

out:
Exit Sub
Error:
Call HandleError("VerifyOneRecordInDBs")
Resume out:
    
End Sub
Private Sub MarkShopInGame(ByVal nNum As Long, sFrom As String)
Dim sTemp As String

Dim nYesNo As Integer
On Error GoTo Error:

If nNum = 0 Then Exit Sub

tabShops.Index = "pkShops"
tabShops.Seek "=", nNum
If Not tabShops.NoMatch = True Then
    
    'if the "sFrom" is already in the assigned to field, dont do it again
    sTemp = tabShops.Fields("Assigned To")
    If Not InStr(1, sTemp, sFrom) = 0 Then Exit Sub
    
    If sTemp = Chr(0) Then
        sTemp = ""
    Else
        sTemp = sTemp & ", "
    End If
    
    sTemp = sTemp & sFrom
    If Len(sTemp) > 250 Then sTemp = Left(sTemp, 248) & "+" & Chr(0)
    
    tabShops.Edit
    tabShops.Fields("In Game") = 1
    tabShops.Fields("Assigned To") = sTemp
    tabShops.Update
End If

Exit Sub

Error:
Call HandleError("MarkShopInGame: #" & nNum)
nYesNo = MsgBox("Stop Export?", vbYesNo + vbDefaultButton2 + vbQuestion)
If nYesNo = vbYes Then bStopExport = True
        
End Sub
Private Sub MarkMonsterInGame(ByVal nNum As Long, sFrom As String)
Dim sTemp As String

Dim nYesNo As Integer
On Error GoTo Error:

If nNum = 0 Then Exit Sub

If UBound(MonsterInGame()) < nNum Then ReDim Preserve MonsterInGame(nNum)
MonsterInGame(nNum) = True
                        
tabMonsters.Index = "pkMonsters"
tabMonsters.Seek "=", nNum
If Not tabMonsters.NoMatch = True Then

    'if the "sFrom" is already in the assigned to field, dont do it again
    sTemp = tabMonsters.Fields("Summoned By")
    If Not InStr(1, sTemp, sFrom) = 0 Then Exit Sub
    
    If sTemp = Chr(0) Then
        sTemp = ""
    Else
        sTemp = sTemp & ", "
    End If
        
    sTemp = sTemp & sFrom
    If Len(sTemp) > 2000 Then sTemp = Left(sTemp, 1999) & "+" & Chr(0)
    
    tabMonsters.Edit
    tabMonsters.Fields("In Game") = 1
    tabMonsters.Fields("Summoned By") = sTemp
    tabMonsters.Update
End If

Exit Sub

Error:
Call HandleError("MarkMonsterInGame: #" & nNum)
nYesNo = MsgBox("Stop Export?", vbYesNo + vbDefaultButton2 + vbQuestion)
If nYesNo = vbYes Then bStopExport = True
        
End Sub

Private Sub MarkItemInGame(ByVal nNum As Long, Optional ByVal sFrom As String, _
    Optional ByVal DontMarkInGame As Boolean)
Dim sTemp As String

Dim nYesNo As Integer
On Error GoTo Error:

If nNum = 0 Then Exit Sub

If UBound(ItemInGame()) < nNum Then ReDim Preserve ItemInGame(nNum)
ItemInGame(nNum) = True
                        
'If InStr(1, sFrom, "9494") > 0 Then
'    Debug.Print ""
'End If

tabItems.Index = "pkItems"
tabItems.Seek "=", nNum
If tabItems.NoMatch = False Then
    
    'if the "sFrom" is already in the assigned to field, dont do it again
    sTemp = tabItems.Fields("Obtained From")
    If sFrom = "" Then GoTo nofrom:
    If Not InStr(1, sTemp, sFrom) = 0 Then Exit Sub
    
    If sTemp = Chr(0) Then
        sTemp = ""
    Else
        sTemp = sTemp & ", "
    End If
        
    sTemp = sTemp & sFrom
    If Len(sTemp) > 2000 Then sTemp = Left(sTemp, 1995) & "+" & Chr(0)

nofrom:
    tabItems.Edit
    If Not DontMarkInGame Then tabItems.Fields("In Game") = 1
    tabItems.Fields("Obtained From") = sTemp
    tabItems.Update
End If

Exit Sub

Error:
Call HandleError("MarkItemInGame: #" & nNum)
nYesNo = MsgBox("Stop Export?", vbYesNo + vbDefaultButton2 + vbQuestion)
If nYesNo = vbYes Then bStopExport = True
        
End Sub
Private Sub MarkSpellInGame(ByVal nNum As Long, Optional ByVal sFrom As String, _
    Optional bLearned As Boolean)
Dim sTemp As String

Dim nYesNo As Integer
On Error GoTo Error:

If nNum = 0 Then Exit Sub

If UBound(SpellInGame()) < nNum Then ReDim Preserve SpellInGame(nNum)
SpellInGame(nNum) = True

'if we are not defining where the spell is learned from, exit

tabSpells.Index = "pkSpells"
tabSpells.Seek "=", nNum
If tabSpells.NoMatch = False Then
    
    If bLearned = True And Not sFrom = "" Then
        'if the "sFrom" is already in the assigned to field, dont do it again
        sTemp = tabSpells.Fields("Learned From")
        If Not InStr(1, sTemp, sFrom) = 0 Then Exit Sub
        
        If sTemp = Chr(0) Then
            sTemp = ""
        Else
            sTemp = sTemp & ", "
        End If
            
        sTemp = sTemp & sFrom
        If Len(sTemp) > 250 Then sTemp = Left(sTemp, 248) & "+" & Chr(0)
        
        tabSpells.Edit
        tabSpells.Fields("Learnable") = 1
        tabSpells.Fields("Learned From") = sTemp
        tabSpells.Update
    Else
        'if the "sFrom" is already in the assigned to field, dont do it again
        sTemp = tabSpells.Fields("Casted By")
        If Not InStr(1, sTemp, sFrom) = 0 Then Exit Sub
        
        If sFrom = "" Then GoTo nofrom:
        
        If sTemp = Chr(0) Then
            sTemp = ""
        Else
            sTemp = sTemp & ", "
        End If
            
        sTemp = sTemp & sFrom
        If Len(sTemp) > 250 Then sTemp = Left(sTemp, 248) & "+" & Chr(0)
        
nofrom:
        tabSpells.Edit
        tabSpells.Fields("Casted By") = sTemp
        tabSpells.Update
    End If
End If

Exit Sub

Error:
Call HandleError("MarkSpellInGame: #" & nNum)
nYesNo = MsgBox("Stop Export?", vbYesNo + vbDefaultButton2 + vbQuestion)
If nYesNo = vbYes Then bStopExport = True
        
End Sub
Private Sub MarkTBInGame(ByVal nNum As Long, ByVal sFrom As String, Optional ByVal bRandom As Boolean)
Dim sTemp As String

Dim nYesNo As Integer
On Error GoTo Error:

If nNum = 0 Then Exit Sub

tabTBInfo.Index = "pkTBInfo"
tabTBInfo.Seek "=", nNum
'if nomatch add a new one, if match add sfrom
If tabTBInfo.NoMatch = True Then
    tabTBInfo.AddNew
    tabTBInfo.Fields("Number") = nNum
    tabTBInfo.Fields("LinkTo") = 0
    tabTBInfo.Fields("Action") = Chr(0)
    'tabTBInfo.Fields("Random") = 0
    sTemp = ""
Else
    'if the "sFrom" is already in the Called From field, dont do it again
    sTemp = tabTBInfo.Fields("Called From")
    If Not InStr(1, sTemp, sFrom) = 0 Then Exit Sub
    
    If sTemp = Chr(0) Then
        sTemp = ""
    Else
        sTemp = sTemp & ", "
    End If
    tabTBInfo.Edit
End If

sTemp = sTemp & sFrom
If Len(sTemp) > 250 Then sTemp = Left(sTemp, 248) & "+" & Chr(0)

tabTBInfo.Fields("Called From") = sTemp
If bRandom Then
'    tabTBInfo.Fields("Random") = 1
    'if this is a randomized block
    'commented out because can only resize last dimension -- If UBound(TBRandom(), 1) < TextblockRec.Number Then ReDim Preserve TBRandom(TextblockRec.Number, UBound(TBRandom(), 2))
    'If UBound(TBRandom(), 2) < TextblockRec.PartNum Then ReDim Preserve TBRandom(UBound(TBRandom(), 1), TextblockRec.PartNum)
    
    TBRandom(nNum) = True
End If
tabTBInfo.Update

Exit Sub

Error:
Call HandleError("MarkTBInGame: #" & nNum)
nYesNo = MsgBox("Stop Export?", vbYesNo + vbDefaultButton2 + vbQuestion)
If nYesNo = vbYes Then bStopExport = True

End Sub
Private Sub ScanRooms()
Dim nStatus As Integer, x As Integer, nRec As Long

'-------------------------------
'       ROOMS
'-------------------------------
Dim nYesNo As Integer
On Error GoTo Error:

nStatus = BTRCALL(BGETFIRST, RoomPosBlock, Roomdatabuf, Len(Roomdatabuf), ByVal RoomKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then Exit Sub

nRec = 1
Do While nStatus = 0 And bStopExport = False
    RoomRowToStruct Roomdatabuf.buf
    lblPanel(1).Caption = "Searching Rooms (" & nRec & ")"
    
'    If Not RoomInGame(Roomrec.MapNumber, Roomrec.RoomNumber) Then
'        GoTo skip:
'    End If
    
    'mark items that are placed items as in the game
    For x = 0 To 9
        If Roomrec.PlacedItems(x) > 0 Then
            Call MarkItemInGame(Roomrec.PlacedItems(x), "Room " & Roomrec.MapNumber & "/" & Roomrec.RoomNumber)
        End If
    Next
    
    'mark items that are hidden in room as in the game (some items are just always hidden cause they aren't getable)
    '    For x = 0 To 14
    '        If Not Roomrec.InvisItems(x) = 0 Then
    '            Call MarkItemInGame(Roomrec.InvisItems(x), "Room " & Roomrec.MapNumber & "/" & Roomrec.RoomNumber)
    '        End If
    '    Next
    
    'mark shops that are assigned to a room as in game
    If Roomrec.Type = 1 And Roomrec.ShopNum > 0 Then
        Call MarkShopInGame(Roomrec.ShopNum, "Room " & Roomrec.MapNumber & "/" & Roomrec.RoomNumber)
    End If
    
    'mark monsters assigned as a perm npc as in game
    If Roomrec.PermNPC > 0 Then
        Call MarkMonsterInGame(Roomrec.PermNPC, "Room " & Roomrec.MapNumber & "/" & Roomrec.RoomNumber)
    End If
    
    'insert/mark command textblock into tbinfo so it gets scanned
    If Roomrec.CmdText > 0 Then
        TBCommands(Roomrec.CmdText) = True
        Call MarkTBInGame(Roomrec.CmdText, "Room " & Roomrec.MapNumber & "/" & Roomrec.RoomNumber)
    End If
    
    'room spell
    If Roomrec.Spell > 0 Then
        Call MarkSpellInGame(Roomrec.Spell, "Room " & Roomrec.MapNumber & "/" & Roomrec.RoomNumber)
    End If
    
    'room exits
    For x = 0 To 9
        If Not Roomrec.RoomExit(x) = 0 Then
            Select Case Roomrec.RoomType(x)
                 Case 22: 'Cast
                    Call MarkSpellInGame(Roomrec.Para1(x), "Room " & Roomrec.MapNumber & "/" & Roomrec.RoomNumber)
                    Call MarkSpellInGame(Roomrec.Para2(x), "Room " & Roomrec.MapNumber & "/" & Roomrec.RoomNumber)
                 Case 24: 'Spell Trap
                    Call MarkSpellInGame(Roomrec.Para1(x), "Room " & Roomrec.MapNumber & "/" & Roomrec.RoomNumber)
            End Select
        End If
    Next x

    'mark which group and indexs this room includes
    If Roomrec.MinIndex > 0 And Roomrec.MaxIndex > 0 Then
        For x = Roomrec.MinIndex To Roomrec.MaxIndex
            If UBound(MonGroup(), 2) < x Then ReDim Preserve MonGroup(UBound(MonGroup(), 1), x)
            If Not MonGroup(Roomrec.MonsterType, x) = "" Then MonGroup(Roomrec.MonsterType, x) = MonGroup(Roomrec.MonsterType, x) & ","
            If Roomrec.Type = 3 Then 'lair
                MonGroup(Roomrec.MonsterType, x) = MonGroup(Roomrec.MonsterType, x) & "Group(lair): " & Roomrec.MapNumber & "/" & Roomrec.RoomNumber
            Else
                MonGroup(Roomrec.MonsterType, x) = MonGroup(Roomrec.MonsterType, x) & "Group: " & Roomrec.MapNumber & "/" & Roomrec.RoomNumber
            End If
        Next x
    End If
    
Skip:
    nStatus = BTRCALL(BGETNEXT, RoomPosBlock, Roomdatabuf, Len(Roomdatabuf), ByVal RoomKeyBuffer, KEY_BUF_LEN, 0)
    If Not bUseCPU Then DoEvents
    nRec = nRec + 1
    Call IncreaseProgressBar
Loop

'''''''Open "c:\group.txt" For Output As #1
'''''''
'''''''Dim y As Integer
'''''''
'''''''For y = 0 To 39
'''''''    For x = 0 To 9999
'''''''        If MonGroup(y, x) = True Then Write #1, "Group " & y & ": " & x & " - " & "True"
'''''''    Next x
'''''''Next y
'''''''
'''''''Close #1

Exit Sub
Error:
lblPanel(1).Caption = Roomrec.MapNumber & "/" & Roomrec.RoomNumber
DoEvents
Call HandleError("ScanRooms")
nYesNo = MsgBox("Stop Export?", vbYesNo + vbDefaultButton2 + vbQuestion)
If nYesNo = vbYes Then
    bStopExport = True
Else
    Resume Next
End If

End Sub

Private Sub ScanShops()
Dim nStatus As Integer, x As Integer

'-------------------------------
'       SHOPS
'-------------------------------
Dim nYesNo As Integer
On Error GoTo Error:

nStatus = BTRCALL(BGETFIRST, ShopPosBlock, Shopdatabuf, Len(Shopdatabuf), ByVal ShopKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then Exit Sub

Do While nStatus = 0 And bStopExport = False
    ShopRowToStruct Shopdatabuf.buf
    lblPanel(1).Caption = "Searching Shops (" & Shoprec.Number & ")"
    
    tabShops.Index = "pkShops"
    tabShops.Seek "=", Shoprec.Number
    If tabShops.NoMatch = True Then GoTo skipshop:
    If tabShops.Fields("In Game") = 0 Then GoTo skipshop:
    
    'mark items sold by shop as in game
    For x = 0 To 19
        If Not Shoprec.ShopItemNumber(x) = 0 Then
            'if max stock is = 0 mark as sale only
            If Shoprec.ShopMax(x) = 0 Then
                Call MarkItemInGame(Shoprec.ShopItemNumber(x), "Shop(sell) #" & Shoprec.Number, True)
            Else
                If Shoprec.ShopRgnPercentage(x) = 0 Or Shoprec.ShopRgnNumber(x) = 0 Then
                    Call MarkItemInGame(Shoprec.ShopItemNumber(x), "Shop(nogen) #" & Shoprec.Number, True)
                Else
                    Call MarkItemInGame(Shoprec.ShopItemNumber(x), "Shop #" & Shoprec.Number)
                End If
            End If
        End If
    Next

skipshop:
    nStatus = BTRCALL(BGETNEXT, ShopPosBlock, Shopdatabuf, Len(Shopdatabuf), ByVal ShopKeyBuffer, KEY_BUF_LEN, 0)
    If Not bUseCPU Then DoEvents
    Call IncreaseProgressBar
Loop

Exit Sub

Error:
Call HandleError("ScanShops")
nYesNo = MsgBox("Stop Export?", vbYesNo + vbDefaultButton2 + vbQuestion)
If nYesNo = vbYes Then
    bStopExport = True
Else
    Resume Next
End If

End Sub

Private Sub ScanMonsters()
Dim nStatus As Integer, x As Integer

'-------------------------------
'       MONSTERS
'-------------------------------
Dim nYesNo As Integer
On Error GoTo Error:

nStatus = BTRCALL(BGETFIRST, MonsterPosBlock, Monsterdatabuf, Len(Monsterdatabuf), ByVal MonsterKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then Exit Sub

Do While nStatus = 0 And bStopExport = False
    MonsterRowToStruct Monsterdatabuf.buf
    lblPanel(1).Caption = "Searching Monsters (" & Monsterrec.Number & ")"
    
    'if it begins with "sdf" then we know it's NOT in the game
    If LCase(Left(Monsterrec.Name, 3)) = "sdf" Then GoTo skipmon:
    
    'if it's index is within the scanned rooms then it's in the game
    If UBound(MonGroup(), 2) < x Then ReDim Preserve MonGroup(UBound(MonGroup(), 1), Monsterrec.Index)
    If Not MonGroup(Monsterrec.Group, Monsterrec.Index) = "" Then
        Call MarkMonsterInGame(Monsterrec.Number, MonGroup(Monsterrec.Group, Monsterrec.Index)) '"Group(Lair): " &
    End If
    
    'if not detected as in the game yet, skip it
    If MonsterInGame(Monsterrec.Number) = False Then GoTo skipmon:
    
    'check to see what items it drops and mark them as in game
    For x = 0 To 9
        If Not Monsterrec.ItemNumber(x) = 0 Then
            Call MarkItemInGame(Monsterrec.ItemNumber(x), "Monster #" & Monsterrec.Number & "(" & Monsterrec.ItemDropPer(x) & "%)")
        End If
    Next

    'insert/mark textblocks that the mons greet text executes
    If Not Monsterrec.GreetTxt = 0 Then
        If UBound(TBFromBadSource()) < Monsterrec.GreetTxt Then _
            ReDim Preserve TBFromBadSource(Monsterrec.GreetTxt)
        TBFromBadSource(Monsterrec.GreetTxt) = True
        
        TBCommands(Monsterrec.GreetTxt) = True
        Call MarkTBInGame(Monsterrec.GreetTxt, "Monster #" & Monsterrec.Number)
    End If

    'insert/mark textblocks that the mons talk text executes'
    'commented out because talktext doesn't have commands
'    If Not Monsterrec.TalkTxt = 0 Then
'        Call MarkTBInGame(Monsterrec.TalkTxt, "Monster #" & Monsterrec.Number)
'    End If
    
    'mark death spell as in game
    If Not Monsterrec.CreateSpellNumber = 0 Then
        Call MarkSpellInGame(Monsterrec.CreateSpellNumber, "Monster #" & Monsterrec.Number)
    End If
    
    'mark death spell as in game
    If Not Monsterrec.DeathSpellNumber = 0 Then
        Call MarkSpellInGame(Monsterrec.DeathSpellNumber, "Monster #" & Monsterrec.Number)
    End If
    
    For x = 0 To 9
        Select Case Monsterrec.AbilityA(x)
            Case 0: 'nothing
            
            'summons monster?
            Case 12: 'summon
                Call MarkMonsterInGame(Monsterrec.AbilityB(x), "Monster #" & Monsterrec.Number)
                
            'learns any spells?
            Case 42: 'learnspell
                Call MarkSpellInGame(Monsterrec.AbilityB(x), "Monster #" & Monsterrec.Number, True)
            
            'casts any spells?
            Case 43, 151, 153: '43-castssp, 151-end cast, 153-killspell
                Call MarkSpellInGame(Monsterrec.AbilityB(x), "Monster #" & Monsterrec.Number)
            
            'calls any textblocks?
            Case 148, 155: '148-textblock, 155-deathtext
                TBCommands(Monsterrec.AbilityB(x)) = True
                Call MarkTBInGame(Monsterrec.AbilityB(x), "Monster #" & Monsterrec.Number)
                
        End Select
    
    Next
    
    For x = 0 To 4
        If Not Monsterrec.AttackType(x) = 0 Then
            Call MarkSpellInGame(Monsterrec.AttackHitSpell(x), "Monster #" & Monsterrec.Number)
        End If
        
        If Monsterrec.AttackType(x) = 2 Then
            Call MarkSpellInGame(Monsterrec.AttackAccuSpell(x), "Monster #" & Monsterrec.Number)
        End If
        
        If Not Monsterrec.SpellNumber(x) = 0 Then
            Call MarkSpellInGame(Monsterrec.SpellNumber(x), "Monster #" & Monsterrec.Number)
        End If
    Next
    
skipmon:
    nStatus = BTRCALL(BGETNEXT, MonsterPosBlock, Monsterdatabuf, Len(Monsterdatabuf), ByVal MonsterKeyBuffer, KEY_BUF_LEN, 0)
    If Not bUseCPU Then DoEvents
    Call IncreaseProgressBar
Loop

Exit Sub

Error:
Call HandleError("ScanMonsters")
nYesNo = MsgBox("Stop Export?", vbYesNo + vbDefaultButton2 + vbQuestion)
If nYesNo = vbYes Then
    bStopExport = True
Else
    Resume Next
End If

End Sub

Private Sub ScanItems()
Dim nStatus As Integer, x As Integer

'-------------------------------
'       ITEMS
'-------------------------------
Dim nYesNo As Integer, bContainer As Boolean
On Error GoTo Error:

nStatus = BTRCALL(BGETFIRST, ItemPosBlock, Itemdatabuf, Len(Itemdatabuf), ByVal ItemKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then Exit Sub

Do While nStatus = 0 And bStopExport = False
    ItemRowToStruct Itemdatabuf.buf
    lblPanel(1).Caption = "Searching Items (" & Itemrec.Number & ")"
    
    'if item not detected as in game yet, skip it
    If UBound(ItemInGame()) < Itemrec.Number Then ReDim Preserve ItemInGame(Itemrec.Number)
    If ItemInGame(Itemrec.Number) = False Then GoTo skipitem:
    
    If Itemrec.Type = 8 Then 'container
        bContainer = True
    Else
        bContainer = False
    End If
    
    For x = 0 To 19
        If Itemrec.AbilityA(x) > 0 And Itemrec.AbilityB(x) > 0 Then
            Select Case Itemrec.AbilityA(x)
                'summons monster?
                Case 12: 'summon
                    Call MarkMonsterInGame(Itemrec.AbilityB(x), "Item #" & Itemrec.Number)
                    
                'learns any spells?
                Case 42: 'learnspell
                    Call MarkSpellInGame(Itemrec.AbilityB(x), "Item #" & Itemrec.Number, True)
                
                'casts any spells?
                Case 43: '43-castssp
                    If bContainer Then
                        If UBound(SpellFromContainerRef()) < Itemrec.AbilityB(x) Then _
                            ReDim Preserve SpellFromContainerRef(Itemrec.AbilityB(x))
                        SpellFromContainerRef(Itemrec.AbilityB(x)) = True
                    End If
                    
                    'If Not bContainer Then
                        Call MarkSpellInGame(Itemrec.AbilityB(x), "Item #" & Itemrec.Number)
                    'End If
                    
                Case 151, 153: '151-end cast, 153-killspell
                    Call MarkSpellInGame(Itemrec.AbilityB(x), "Item #" & Itemrec.Number)
                
                'calls any textblocks?
                Case 148, 155: '148-textblock, 155-deathtext
                    TBCommands(Itemrec.AbilityB(x)) = True
                    Call MarkTBInGame(Itemrec.AbilityB(x), "Item #" & Itemrec.Number)
                    
            End Select
        End If
    Next x

    'mark read textblock as in game
    'commented out, no commands
'    If Not Itemrec.ReadTB = 0 Then
'        Call MarkTBInGame(Itemrec.ReadTB, "Item #" & Itemrec.Number)
'    End If

skipitem:
    nStatus = BTRCALL(BGETNEXT, ItemPosBlock, Itemdatabuf, Len(Itemdatabuf), ByVal ItemKeyBuffer, KEY_BUF_LEN, 0)
    If Not bUseCPU Then DoEvents
    Call IncreaseProgressBar
Loop

Exit Sub

Error:
Call HandleError("ScanItems")
nYesNo = MsgBox("Stop Export?", vbYesNo + vbDefaultButton2 + vbQuestion)
If nYesNo = vbYes Then
    bStopExport = True
Else
    Resume Next
End If

End Sub
Private Sub ScanSpells()
Dim nStatus As Integer, x As Integer, y1 As Long, y2 As Long
Dim nNumber As Long

'-------------------------------
'       SPELLS
'-------------------------------
Dim nYesNo As Integer
On Error GoTo Error:

nStatus = BTRCALL(BGETFIRST, SpellPosBlock, Spelldatabuf, Len(Spelldatabuf), ByVal SpellKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then Exit Sub

Do While nStatus = 0 And bStopExport = False
    SpellRowToStruct Spelldatabuf.buf
    lblPanel(1).Caption = "Searching Spells (" & Spellrec.Number & ")"
    
    'if spell not marked as in game, skip
    If UBound(SpellInGame()) < Spellrec.Number Then ReDim Preserve SpellInGame(Spellrec.Number)
    If SpellInGame(Spellrec.Number) = False Then GoTo skipspell:
    
    'check spell abilities for stuff
    For x = 0 To 9
        If Spellrec.AbilityA(x) > 0 Then
            nNumber = Spellrec.AbilityB(x) 'this is because some spells have 0 for the abilityB and the number would be in the min/max
            If nNumber = 0 Then
                y1 = Spellrec.Min
                y2 = Spellrec.Max
                If y2 < y1 Then y2 = y1
            Else
                y1 = nNumber
                y2 = nNumber
            End If
            
            If y1 > 0 And y2 > 0 Then
                For nNumber = y1 To y2
                    Select Case Spellrec.AbilityA(x)
                        'summons monster?
                        Case 12: 'summon
                            Call MarkMonsterInGame(nNumber, "Spell #" & Spellrec.Number)
                            
                        'learns any spells?
                        Case 42: 'learnspell
                            Call MarkSpellInGame(nNumber, "Spell #" & Spellrec.Number, True)
                        
                        'casts any spells?
                        Case 43, 151, 153: '43-castssp, 151-end cast, 153-killspell
                            Call MarkSpellInGame(nNumber, "Spell #" & Spellrec.Number)
                            
                        'calls any textblocks?
                        Case 148, 155: '148-textblock, 155-deathtext
                            If UBound(SpellFromContainerRef()) >= Spellrec.Number Then
                                If SpellFromContainerRef(Spellrec.Number) = True Then
                                    If UBound(TBFromBadSource()) < nNumber Then _
                                        ReDim Preserve TBFromBadSource(nNumber)
                                    TBFromBadSource(nNumber) = True
                                End If
                            End If
                            
                            TBCommands(nNumber) = True
                            Call MarkTBInGame(nNumber, "Spell #" & Spellrec.Number)
                            
                    End Select
                Next nNumber
            End If
        End If
    Next x

skipspell:
    nStatus = BTRCALL(BGETNEXT, SpellPosBlock, Spelldatabuf, Len(Spelldatabuf), ByVal SpellKeyBuffer, KEY_BUF_LEN, 0)
    If Not bUseCPU Then DoEvents
    Call IncreaseProgressBar
Loop

Exit Sub

Error:
Call HandleError("ScanSpells")
nYesNo = MsgBox("Stop Export?", vbYesNo + vbDefaultButton2 + vbQuestion)
If nYesNo = vbYes Then
    bStopExport = True
Else
    Resume Next
End If

End Sub

Private Sub ScanTextblocks()
Dim nStatus As Integer
Dim decrypted As String, bCleared(1) As Boolean, nCurrentTB As Long, nCurrentPart As Long

'-------------------------------
'       TEXTBLOCKS
'-------------------------------
Dim nYesNo As Integer
On Error GoTo Error:

nStatus = BTRCALL(BGETFIRST, TextblockPosBlock, TextblockDataBuf, Len(TextblockDataBuf), ByVal TextblockKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then Exit Sub

Do While nStatus = 0 And bStopExport = False
    TextblockRowToStruct TextblockDataBuf.buf
    lblPanel(1).Caption = "Searching Textblocks (" & TextblockRec.Number & ")"
    nCurrentTB = TextblockRec.Number
    nCurrentPart = TextblockRec.PartNum
    
'    If TextblockRec.Number = 428 Then
'        Debug.Print ""
'    End If

    'if this block has already been scanned and cleared, dont scan it again
    'commented out because can only resize last dimension -- If UBound(TBScanned(), 1) < TextblockRec.Number Then ReDim Preserve TBScanned(TextblockRec.Number, UBound(TBScanned(), 2))
    If UBound(TBScanned(), 2) < TextblockRec.PartNum Then ReDim Preserve TBScanned(UBound(TBScanned(), 1), TextblockRec.PartNum)
    
    If TBScanned(TextblockRec.Number, TextblockRec.PartNum) = True Then GoTo skipTB:

    tabTBInfo.Index = "pkTBInfo"
    tabTBInfo.Seek "=", TextblockRec.Number  'this will cover even if the textblock is part 1+ cause it will still succesfully call part 0
    If tabTBInfo.NoMatch = True Then GoTo skipTB:   'if there isn't a textblock entry then no monster/room/item/spell executes it
    
    '----- [checking to see if it has a link to]
    If TextblockRec.LinkTo > 0 Then
        If tabTBInfo.Fields("LinkTo") < 1 Then
            tabTBInfo.Edit
            tabTBInfo.Fields("LinkTo") = TextblockRec.LinkTo
            tabTBInfo.Update
        End If
        
        If UBound(TBFromBadSource()) < TextblockRec.Number Then _
            ReDim Preserve TBFromBadSource(TextblockRec.Number)
        If UBound(TBFromBadSource()) < TextblockRec.LinkTo Then _
            ReDim Preserve TBFromBadSource(TextblockRec.LinkTo)
        If TBFromBadSource(TextblockRec.Number) = True Then
            TBFromBadSource(TextblockRec.LinkTo) = True
        End If
        
        Call MarkTBInGame(TextblockRec.LinkTo, "Textblock #" & TextblockRec.Number)
    End If
    
    decrypted = DecryptTextblock(TextblockRec.Data)

    bCleared(1) = True 'bCleared is to see if this block needs to be scanned again because one line of code failed
    
    '----- [checking for cast]
    bCleared(0) = CheckTBString(nCurrentTB, decrypted, "cast ", Spell)
    If bCleared(0) = False Then bCleared(1) = False
    
    '----- [checking for learn spell]
    bCleared(0) = CheckTBString(nCurrentTB, decrypted, "learnspell ", Spell)
    If bCleared(0) = False Then bCleared(1) = False
    
    '----- [checking for item gives]
    bCleared(0) = CheckTBString(nCurrentTB, decrypted, "giveitem ", Item)
    If bCleared(0) = False Then bCleared(1) = False
    
    '----- [checking for monster summons]
    bCleared(0) = CheckTBString(nCurrentTB, decrypted, "summon ", Monster)
    If bCleared(0) = False Then bCleared(1) = False
    
    '----- [checking to see if it executs any other textblocks]
    'checks for "random X" textblocks
    bCleared(0) = CheckTBString(nCurrentTB, decrypted, "random ", TextBlock)
    If bCleared(0) = False Then bCleared(1) = False
    
    'checks for "text X" textblocks
    bCleared(0) = CheckTBString(nCurrentTB, decrypted, "testskill ", TextBlock)
    If bCleared(0) = False Then bCleared(1) = False
    
    'checks for "text X" textblocks
    bCleared(0) = CheckTBString(nCurrentTB, decrypted, "text ", TextBlock)
    If bCleared(0) = False Then bCleared(1) = False
    
    'checks for ":<textblock>"
    bCleared(0) = CheckTBString(nCurrentTB, decrypted, ":", TextBlock)
    If bCleared(0) = False Then bCleared(1) = False
    
    If Not TextblockRec.Number = nCurrentTB Then
        TextblockKey.Number = nCurrentTB
        TextblockKey.PartNum = nCurrentPart
        nStatus = BTRCALL(BGETEQUAL, TextblockPosBlock, TextblockDataBuf, TextblockMaxBufSize, ByVal TextblockKey, KEY_BUF_LEN, 0)
        Call TextblockRowToStruct(TextblockDataBuf.buf)
    End If
    
    If bCleared(1) Then TBScanned(TextblockRec.Number, TextblockRec.PartNum) = True
    
skipTB:
    nStatus = BTRCALL(BGETNEXT, TextblockPosBlock, TextblockDataBuf, Len(TextblockDataBuf), ByVal TextblockKeyBuffer, KEY_BUF_LEN, 0)
    If Not bUseCPU Then DoEvents
    Call IncreaseProgressBar
Loop

Exit Sub

Error:
Call HandleError("ScanTextblocks")
nYesNo = MsgBox("Stop Export?", vbYesNo + vbDefaultButton2 + vbQuestion)
If nYesNo = vbYes Then
    bStopExport = True
Else
    Resume Next
End If

End Sub

Private Sub FillTextblockCommands()
Dim nStatus As Integer
Dim decrypted As String

'-------------------------------
'       TEXTBLOCKS
'-------------------------------
nStatus = BTRCALL(BGETFIRST, TextblockPosBlock, TextblockDataBuf, Len(TextblockDataBuf), ByVal TextblockKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then Exit Sub

Do While nStatus = 0 And bStopExport = False
    TextblockRowToStruct TextblockDataBuf.buf
    lblPanel(1).Caption = "Entering textblock commands (" & TextblockRec.Number & ")"
    
    decrypted = DecryptTextblock(TextblockRec.Data)
    
    tabTBInfo.Index = "pkTBInfo"
    tabTBInfo.Seek "=", TextblockRec.Number  'this will cover even if the textblock is part 1+ cause it will still succesfully call part 0
    If tabTBInfo.NoMatch = True Then GoTo skipTB:   'if there isn't a textblock entry then no monster/room/item/spell executes it
        
    If TBCommands(TextblockRec.Number) = True Then
        tabTBInfo.Seek "=", TextblockRec.Number
        tabTBInfo.Edit
        If TextblockRec.PartNum = 0 Then
            tabTBInfo.Fields("Action") = decrypted
        Else
            tabTBInfo.Fields("Action") = tabTBInfo.Fields("Action") & decrypted
        End If
        tabTBInfo.Update
    End If
    
skipTB:
    nStatus = BTRCALL(BGETNEXT, TextblockPosBlock, TextblockDataBuf, Len(TextblockDataBuf), ByVal TextblockKeyBuffer, KEY_BUF_LEN, 0)
    If Not bUseCPU Then DoEvents
    Call IncreaseProgressBar
Loop

End Sub

Private Sub ScanGreets()
Dim nStatus As Integer, x As Long, nRec As Long, nCurrentMonster As Long

'-------------------------------
'       Greets
'-------------------------------
Dim nYesNo As Integer, sData As String, z As Long, nTBNumber As Long
Dim nNest As Long, nMonsterItems() As Currency, nDataPos As Long, y As Long
Dim nMonsterSpells() As Currency

On Error GoTo Error:

nStatus = BTRCALL(BGETFIRST, MonsterPosBlock, Monsterdatabuf, Len(Monsterdatabuf), ByVal MonsterKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then Exit Sub

Do While nStatus = 0 And bStopExport = False
    MonsterRowToStruct Monsterdatabuf.buf
    lblPanel(1).Caption = "Scanning Greets (" & Monsterrec.Number & ")"
    
    nCurrentMonster = Monsterrec.Number
    'if Monster not detected as in game yet, skip it
    If UBound(MonsterInGame()) < Monsterrec.Number Then _
        ReDim Preserve MonsterInGame(Monsterrec.Number)
    If MonsterInGame(Monsterrec.Number) = False Then GoTo skipMonster:
    
    If Not Monsterrec.GreetTxt > 0 Then GoTo skipMonster: 'Greet
    
    TextblockKey.PartNum = 0
    TextblockKey.Number = Monsterrec.GreetTxt
    
    nStatus = BTRCALL(BGETEQUAL, TextblockPosBlock, TextblockDataBuf, _
        TextblockMaxBufSize, ByVal TextblockKey, KEY_BUF_LEN, 0)
        
    If Not nStatus = 0 Then GoTo skipMonster:
    Call TextblockRowToStruct(TextblockDataBuf.buf)
    
    'Call MarkTBInGame(TextblockRec.Number, "Spell #" & Spellrec.Number)
    
    If Len(TextblockRec.Data) < 5 Then GoTo skipMonster:
    sData = DecryptTextblock(TextblockRec.Data)
    
check_next_part:
    nStatus = BTRCALL(BGETNEXT, TextblockPosBlock, TextblockDataBuf, _
        TextblockMaxBufSize, ByVal TextblockKeyBuffer, KEY_BUF_LEN, 0)
    If nStatus = 0 Then
        Call TextblockRowToStruct(TextblockDataBuf.buf)
        If TextblockRec.Number = Monsterrec.GreetTxt And TextblockRec.PartNum > 0 Then
            sData = sData & DecryptTextblock(TextblockRec.Data)
            GoTo check_next_part:
        End If
    End If
    
    Erase nMonsterSpells()
    ReDim nMonsterSpells(0)
    Erase nMonsterItems()
    ReDim nMonsterItems(1 To 3, 0) '1=number, 2=percent, 3=percent failure
    nDataPos = 1
    
    Do While InStr(nDataPos, sData, ":") > 0
        nDataPos = InStr(nDataPos, sData, ":") + 1
        
        For z = nDataPos To Len(sData)
            Select Case Mid(sData, z, 1)
                Case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
                Case Else: Exit For
            End Select
        Next z
        
        If z > nDataPos Then
            nTBNumber = Val(Mid(sData, nDataPos, z - nDataPos))
            
            TextblockKey.PartNum = 0
            TextblockKey.Number = nTBNumber
            
            nStatus = BTRCALL(BGETEQUAL, TextblockPosBlock, TextblockDataBuf, _
                TextblockMaxBufSize, ByVal TextblockKey, KEY_BUF_LEN, 0)
                
            If nStatus = 0 Then
                Call TextblockRowToStruct(TextblockDataBuf.buf)
                nTBNumber = TextblockRec.LinkTo
                If nTBNumber > 0 Then
                    Call GetTBItems(nMonsterItems(), nTBNumber, nNest, True, nMonsterSpells())
                End If
            End If
        End If
    Loop
    
    If UBound(nMonsterItems(), 2) > 0 Then
        For z = 0 To UBound(nMonsterItems(), 2)
            If nMonsterItems(1, z) > 0 Then
                Call MarkItemInGame(nMonsterItems(1, z), "NPC #" _
                    & nCurrentMonster)
                    '& IIf(nMonsterItems(2, z) < 1 And nMonsterItems(2, z) > 0, "(" _
                    '& Round(nMonsterItems(2, z) * 100, 1) & "%)", ""))
            End If
        Next z
        
        Erase nMonsterItems()
    End If
    
    If UBound(nMonsterSpells()) > 0 Then
        For z = 0 To UBound(nMonsterSpells())
            If nMonsterSpells(z) > 0 Then
                Call MarkSpellInGame(nMonsterSpells(z), "NPC #" _
                    & nCurrentMonster, True)
                    '& IIf(nMonsterSpells(2, z) < 1 And nMonsterSpells(2, z) > 0, "(" _
                    '& Round(nMonsterSpells(2, z) * 100, 1) & "%)", ""))
            End If
        Next z
        
        Erase nMonsterSpells()
    End If

skipMonster:
    If Not nCurrentMonster = Monsterrec.Number Then
        nStatus = BTRCALL(BGETEQUAL, MonsterPosBlock, Monsterdatabuf, _
                Len(Monsterdatabuf), nCurrentMonster, KEY_BUF_LEN, 0)
        If Not nStatus = 0 Then
            MsgBox "Error regetting current Monster.", vbExclamation
            GoTo out:
        End If
    End If
    
    nStatus = BTRCALL(BGETNEXT, MonsterPosBlock, Monsterdatabuf, Len(Monsterdatabuf), ByVal MonsterKeyBuffer, KEY_BUF_LEN, 0)
    If Not bUseCPU Then DoEvents
    Call IncreaseProgressBar
Loop

out:
Erase nMonsterSpells()
Erase nMonsterItems()
Exit Sub

Error:
Call HandleError("ScanGreets")
nYesNo = MsgBox("Stop Export?", vbYesNo + vbDefaultButton2 + vbQuestion)
If nYesNo = vbYes Then
    bStopExport = True
    Resume out:
Else
    Resume Next
End If

End Sub

Private Sub ScanContainers()
Dim nStatus As Integer, x As Long, nRec As Long, nCurrentItem As Long

'-------------------------------
'       CONTAINERs
'-------------------------------
Dim nYesNo As Integer, nTBNumber As Long, sData As String, z As Long
Dim nNest As Long, nChestItems() As Currency, nDataPos As Long, y As Long
Dim nDummyArray() As Currency '=bad programming is what this is

On Error GoTo Error:

nStatus = BTRCALL(BGETFIRST, ItemPosBlock, Itemdatabuf, Len(Itemdatabuf), ByVal ItemKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then Exit Sub

Do While nStatus = 0 And bStopExport = False
    ItemRowToStruct Itemdatabuf.buf
    lblPanel(1).Caption = "Scanning Chests (" & Itemrec.Number & ")"
    
    nCurrentItem = Itemrec.Number
    'if item not detected as in game yet, skip it
    If UBound(ItemInGame()) < Itemrec.Number Then ReDim Preserve ItemInGame(Itemrec.Number)
    If ItemInGame(Itemrec.Number) = False Then GoTo skipitem:
    
    If Not Itemrec.Type = 8 Then GoTo skipitem: 'container
    
    For x = 0 To 19
        
        If Itemrec.AbilityA(x) = 43 And Itemrec.AbilityB(x) > 0 Then
            nRec = Itemrec.AbilityB(x)
            nStatus = BTRCALL(BGETEQUAL, SpellPosBlock, Spelldatabuf, _
                Len(Spelldatabuf), nRec, KEY_BUF_LEN, 0)
            If nStatus = 0 Then
                Call SpellRowToStruct(Spelldatabuf.buf)
                
                'Call MarkSpellInGame(Spellrec.Number, "Item #" & nCurrentItem)
                
                For y = 0 To 9
                    If Spellrec.AbilityA(y) = 148 Then 'castsp
                        If Spellrec.AbilityB(y) = 0 Then
                            If Spellrec.Min > 0 Then
                                nTBNumber = Spellrec.Min
                            Else
                                nTBNumber = Spellrec.Max
                            End If
                        Else
                            nTBNumber = Spellrec.AbilityB(y)
                        End If
                        
                        TextblockKey.PartNum = 0
                        TextblockKey.Number = nTBNumber
                        
                        nStatus = BTRCALL(BGETEQUAL, TextblockPosBlock, TextblockDataBuf, _
                            TextblockMaxBufSize, ByVal TextblockKey, KEY_BUF_LEN, 0)
                        If nStatus = 0 Then
                            Call TextblockRowToStruct(TextblockDataBuf.buf)
                            
                            'Call MarkTBInGame(TextblockRec.Number, "Spell #" & Spellrec.Number)
                            
                            If Len(TextblockRec.Data) > 5 Then
                                sData = DecryptTextblock(TextblockRec.Data)
                                
                                Erase nDummyArray()
                                ReDim nDummyArray(0)
                                Erase nChestItems()
                                ReDim nChestItems(1 To 3, 0) '1=number, 2=percent, 3=percent failure
                                nDataPos = 1
                                
                                Do While InStr(nDataPos, sData, "random ") > 0
                                    nDataPos = InStr(nDataPos, sData, "random ") + Len("random ")
                                    
                                    For z = nDataPos To Len(sData)
                                        Select Case Mid(sData, z, 1)
                                            Case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
                                            Case Else: Exit For
                                        End Select
                                    Next z
                                    
                                    If z > nDataPos Then
                                        nTBNumber = Val(Mid(sData, nDataPos, z - nDataPos))
                                        Call GetRandomTBItems(nChestItems(), nTBNumber, nNest, 1, False, nDummyArray())
                                    End If
                                Loop
                                
                                If UBound(nChestItems(), 2) > 0 Then
                                    For z = 0 To UBound(nChestItems(), 2)
                                        If nChestItems(1, z) > 0 Then
                                            Call MarkItemInGame(nChestItems(1, z), "Item #" _
                                                & nCurrentItem & "(" _
                                                & Round(nChestItems(2, z) * 100, 1) & "%)")
                                        End If
                                    Next z
                                End If
                                
                            End If
                        End If
                    End If
                Next y
            End If
        End If
    Next x

skipitem:
    If Not nCurrentItem = Itemrec.Number Then
        nStatus = BTRCALL(BGETEQUAL, ItemPosBlock, Itemdatabuf, _
                Len(Itemdatabuf), nCurrentItem, KEY_BUF_LEN, 0)
        If Not nStatus = 0 Then
            MsgBox "Error regetting current item.", vbExclamation
            GoTo out:
        End If
    End If
    
    nStatus = BTRCALL(BGETNEXT, ItemPosBlock, Itemdatabuf, Len(Itemdatabuf), ByVal ItemKeyBuffer, KEY_BUF_LEN, 0)
    If Not bUseCPU Then DoEvents
    Call IncreaseProgressBar
Loop

out:
Erase nDummyArray()
Erase nChestItems()
Exit Sub

Error:
Call HandleError("ScanContainers")
nYesNo = MsgBox("Stop Export?", vbYesNo + vbDefaultButton2 + vbQuestion)
If nYesNo = vbYes Then
    bStopExport = True
    Resume out:
Else
    Resume Next
End If

End Sub


Private Sub GetTBItems(ByRef nReturnArray() As Currency, ByVal nTBNumber As Long, _
    ByRef nNest As Long, ByVal bCheckSpells As Boolean, ByRef nReturnSpellArray() As Currency)
Dim sData As String, nDataPos As Long, x As Long, y As Long
Dim sLine As String, nValue As Long, nPercent As Currency
Dim nItemArray() As Currency, nStatus As Integer
On Error GoTo Error:

If nNest > 5 Then Exit Sub

TextblockKey.PartNum = 0
TextblockKey.Number = nTBNumber

nStatus = BTRCALL(BGETEQUAL, TextblockPosBlock, TextblockDataBuf, _
    TextblockMaxBufSize, ByVal TextblockKey, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then Exit Sub

Call TextblockRowToStruct(TextblockDataBuf.buf)
sData = DecryptTextblock(TextblockRec.Data)
If Len(sData) < 5 Then Exit Sub

check_next_part:
nStatus = BTRCALL(BGETNEXT, TextblockPosBlock, TextblockDataBuf, _
    TextblockMaxBufSize, ByVal TextblockKeyBuffer, KEY_BUF_LEN, 0)
If nStatus = 0 Then
    Call TextblockRowToStruct(TextblockDataBuf.buf)
    If TextblockRec.Number = nTBNumber And TextblockRec.PartNum > 0 Then
        sData = sData & DecryptTextblock(TextblockRec.Data)
        GoTo check_next_part:
    End If
End If

nDataPos = 1

nNest = nNest + 1

ReDim nItemArray(1 To 2, 0) '1=number, 2=percent

'first we collect all the items
Do While nDataPos < Len(sData)
    x = InStr(nDataPos, sData, Chr(10))
    If x <= 0 Then x = Len(sData)
    sLine = LCase(Mid(sData, nDataPos, x - nDataPos))
    nDataPos = x + 1
    
    'items not in game
    If TestItemFail(sData, nDataPos - 1) = True Then GoTo next_line:
        
    y = 1
check_give_again:
    y = InStr(y, sLine, "giveitem ")
    If y > 0 Then
        nValue = ExtractValueFromString(Mid(sLine, y), "giveitem ")
        
        For x = 0 To UBound(nItemArray(), 2)
            If nItemArray(1, x) = nValue Then
                nItemArray(2, x) = nItemArray(2, x) + 1
                x = -1
                Exit For
            End If
        Next x
        If x >= 0 Then
            x = UBound(nItemArray(), 2) + 1
            ReDim Preserve nItemArray(1 To 2, x)
            nItemArray(1, x) = nValue
            nItemArray(2, x) = 1
        End If
        y = y + 1
        GoTo check_give_again:
    End If
    
    If bCheckSpells Then
        y = 1
check_spell_again:
        y = InStr(y, sLine, "learnspell ")
        If y > 0 Then
            nValue = ExtractValueFromString(Mid(sLine, y), "learnspell ")
            
            For x = 0 To UBound(nReturnSpellArray())
                If nReturnSpellArray(x) = nValue Then
                    x = -1
                    Exit For
                End If
            Next x
            If x >= 0 Then
                x = UBound(nReturnSpellArray()) + 1
                ReDim Preserve nReturnSpellArray(x)
                nReturnSpellArray(x) = nValue
            End If
            y = y + 1
            GoTo check_spell_again:
        End If
    End If
    
    y = 1
check_random_again:
    y = InStr(y, sLine, "random ")
    If y > 0 Then
        nValue = ExtractValueFromString(Mid(sLine, y), "random ")
        If nValue > 0 Then
            Call GetRandomTBItems(nReturnArray(), nValue, nNest, 1, bCheckSpells, nReturnSpellArray())
        End If
        y = y + 1
        GoTo check_random_again:
    End If
    
next_line:
Loop

'then we put the collected items into the chest array
'...this is actually sort of unecessary i found out afterwards
For y = 0 To UBound(nItemArray(), 2)
    If nItemArray(1, y) > 0 Then
        nPercent = nItemArray(2, y)
        
        For x = 0 To UBound(nReturnArray(), 2)
            If nReturnArray(1, x) = nItemArray(1, y) Then
                'If nReturnArray(3, x) = 0 Then nReturnArray(3, x) = 1
                nReturnArray(2, x) = nReturnArray(2, x) + _
                    (nReturnArray(3, x) * nPercent)
                nReturnArray(3, x) = nReturnArray(3, x) * (1 - nPercent)
                x = -1
                Exit For
            End If
        Next x
        If x >= 0 Then
            x = UBound(nReturnArray(), 2) + 1
            ReDim Preserve nReturnArray(1 To 3, x)
            nReturnArray(1, x) = nItemArray(1, y)
            nReturnArray(2, x) = nPercent
            nReturnArray(3, x) = 1 - nReturnArray(2, x)
        End If
        
    End If
Next y

nNest = nNest - 1

Erase nItemArray()

Exit Sub
Error:
Call HandleError("GetTBItems-#" & nTBNumber)
Erase nItemArray()
End Sub


Private Sub GetRandomTBItems(ByRef nReturnArray() As Currency, ByVal nTBNumber As Long, _
    ByRef nNest As Long, ByVal nPercentMod As Currency, _
    ByVal bCheckSpells As Boolean, ByRef nReturnSpellArray() As Currency)
Dim sData As String, nDataPos As Long, x As Long, y As Long
Dim nPer1 As Long, nPer2 As Long, sLine As String, nValue As Long, nPercent As Currency
Dim nItemArray() As Currency, nStatus As Integer
On Error GoTo Error:

If nNest > 5 Then Exit Sub

TextblockKey.PartNum = 0
TextblockKey.Number = nTBNumber

nStatus = BTRCALL(BGETEQUAL, TextblockPosBlock, TextblockDataBuf, _
    TextblockMaxBufSize, ByVal TextblockKey, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then Exit Sub

Call TextblockRowToStruct(TextblockDataBuf.buf)
sData = DecryptTextblock(TextblockRec.Data)
If Len(sData) < 5 Then Exit Sub

check_next_part:
nStatus = BTRCALL(BGETNEXT, TextblockPosBlock, TextblockDataBuf, _
    TextblockMaxBufSize, ByVal TextblockKeyBuffer, KEY_BUF_LEN, 0)
If nStatus = 0 Then
    Call TextblockRowToStruct(TextblockDataBuf.buf)
    If TextblockRec.Number = nTBNumber And TextblockRec.PartNum > 0 Then
        sData = sData & DecryptTextblock(TextblockRec.Data)
        GoTo check_next_part:
    End If
End If

nDataPos = 1

nNest = nNest + 1

If nPercentMod <= 0 Then nPercentMod = 1
ReDim nItemArray(1 To 2, 0) '1=number, 2=percent

'first we collect all the items and total their %'s
Do While nDataPos < Len(sData)
    x = InStr(nDataPos, sData, ":")
    If x > nDataPos Then
        nPer1 = Val(Mid(sData, nDataPos, x - nDataPos))
        nPercent = (nPer1 - nPer2) / 100
        nPer2 = nPer1
        
        nDataPos = x + 1
        
        x = InStr(nDataPos, sData, Chr(10))
        If x <= 0 Then x = Len(sData)
        sLine = LCase(Mid(sData, nDataPos, x - nDataPos))
        nDataPos = x
        
        y = 1
check_give_again:
        y = InStr(y, sLine, "giveitem ")
        If y > 0 Then
            nValue = ExtractValueFromString(Mid(sLine, y), "giveitem ")
            
            For x = 0 To UBound(nItemArray(), 2)
                If nItemArray(1, x) = nValue Then
                    nItemArray(2, x) = nItemArray(2, x) + nPercent
                    x = -1
                    Exit For
                End If
            Next x
            If x >= 0 Then
                x = UBound(nItemArray(), 2) + 1
                ReDim Preserve nItemArray(1 To 2, x)
                nItemArray(1, x) = nValue
                nItemArray(2, x) = nPercent
            End If
            
            y = y + 1
            GoTo check_give_again:
        End If
        
        If bCheckSpells Then
            y = 1
check_spell_again:
            y = InStr(y, sLine, "learnspell ")
            If y > 0 Then
                nValue = ExtractValueFromString(Mid(sLine, y), "learnspell ")
                
                For x = 0 To UBound(nReturnSpellArray())
                    If nReturnSpellArray(x) = nValue Then
                        x = -1
                        Exit For
                    End If
                Next x
                If x >= 0 Then
                    x = UBound(nReturnSpellArray()) + 1
                    ReDim Preserve nReturnSpellArray(x)
                    nReturnSpellArray(x) = nValue
                End If
                y = y + 1
                GoTo check_spell_again:
            End If
        End If
        
        y = 1
check_random_again:
        y = InStr(y, sLine, "random ")
        If y > 0 Then
            
            nValue = ExtractValueFromString(Mid(sLine, y), "random ")
            If nValue > 0 Then
                Call GetRandomTBItems(nReturnArray(), nValue, nNest, (nPercent * nPercentMod), bCheckSpells, nReturnSpellArray())
            End If
            
            y = y + 1
            GoTo check_random_again:
        End If
    ElseIf x = 0 Then
        Exit Do
    Else
        nDataPos = nDataPos + 1
    End If
Loop

'then we put the collected items into the chest array
'...this is actually sort of unecessary i found out afterwards
For y = 0 To UBound(nItemArray(), 2)
    If nItemArray(1, y) > 0 Then
        nPercent = nItemArray(2, y)
        
        For x = 0 To UBound(nReturnArray(), 2)
            If nReturnArray(1, x) = nItemArray(1, y) Then
                'If nReturnArray(3, x) = 0 Then nReturnArray(3, x) = 1
                nReturnArray(2, x) = nReturnArray(2, x) + _
                    (nReturnArray(3, x) * nPercent * nPercentMod)
                nReturnArray(3, x) = nReturnArray(3, x) * (1 - nPercent)
                x = -1
                Exit For
            End If
        Next x
        If x >= 0 Then
            x = UBound(nReturnArray(), 2) + 1
            ReDim Preserve nReturnArray(1 To 3, x)
            nReturnArray(1, x) = nItemArray(1, y)
            nReturnArray(2, x) = nPercent * nPercentMod
            nReturnArray(3, x) = 1 - nReturnArray(2, x)
        End If
        
    End If
Next y

nNest = nNest - 1

Erase nItemArray()

Exit Sub
Error:
Call HandleError("GetRandomTBItems-#" & nTBNumber)
Erase nItemArray()
End Sub



Private Function CheckTBString(ByVal TBNumber As Long, ByVal WholeString As String, _
    ByVal StringToLookFor As String, RecordType As MarkType) As Boolean
Dim x As Integer, y1 As Integer, y2 As Integer, bTestSkill As Boolean
Dim nNumber As Long, sWhole As String, sLook As String, sSuffix As String
Dim bLearnSpell As Boolean, sChar As String, bItemFail As Boolean, bRandom As Boolean
Dim bGiveItem As Boolean

sWhole = LCase(WholeString)
sLook = LCase(StringToLookFor)

If Left(sLook, 5) = "learn" Then bLearnSpell = True 'learnspell?
If Left(sLook, 6) = "random" Then bRandom = True 'random?
If Left(sLook, 9) = "testskill" Then bTestSkill = True 'testskill
If Left(sLook, 8) = "giveitem" Then bGiveItem = True

CheckTBString = True

x = 1
checknext:
If Not InStr(x, sWhole, sLook) = 0 Then
    x = InStr(x, sWhole, sLook)
    y1 = x + Len(sLook) 'len of string searching (to position y1 at first number)
    y2 = 0
    
    If bTestSkill Then
        x = InStr(y1, sWhole, " ") + 1 'position after the skill tested
        If x = 1 Then x = y1: GoTo checknext:
        x = InStr(x, sWhole, " ") + 1 'position after the amount of the skill test
        If x = 1 Then x = y1: GoTo checknext:
        y2 = InStr(y1, sWhole, ":") 'check to make sure there was another command between these
        If y2 > 0 And y2 < x Then x = y1: GoTo checknext:
        y2 = InStr(y1, sWhole, Chr(10)) 'check to make sure there was another command between these
        If y2 > 0 And y2 < x Then x = y1: GoTo checknext:
        y1 = x
        y2 = 0
    End If
    
nextnumber:
    sChar = Mid(sWhole, y1 + y2, 1)

    Select Case sChar
        Case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
            If Not y1 + y2 - 1 = Len(sWhole) Then
                y2 = y2 + 1
                GoTo nextnumber:
            End If
        Case Else:
    End Select
    
    If y2 = 0 Then
        'if there were no numbers after the string
        x = y1
        GoTo checknext:
    End If
    
    nNumber = Val(Mid(sWhole, y1, y2))
    
    sSuffix = ""
    bItemFail = TestItemFail(sWhole, x) 'test to make sure any items required for this block are in the game
    If bItemFail = False Then
        
        'tabTBInfo.Index = "pkTBInfo"
        'tabTBInfo.Seek "=", TBNumber
        'If Not tabTBInfo.NoMatch Then
            'if this is a randomized block
            'commented out because can only resize last dimension -- If UBound(TBRandom(), 1) < TextblockRec.Number Then ReDim Preserve TBRandom(TextblockRec.Number, UBound(TBRandom(), 2))
            'If UBound(TBRandom(), 2) < TextblockRec.PartNum Then ReDim Preserve TBRandom(UBound(TBRandom(), 1), TextblockRec.PartNum)
            
            If TBRandom(TBNumber) = True Then
            'If tabTBInfo.Fields("Random") = 1 Then
                sSuffix = GetTBPercent(sWhole, x)
            End If
        'End If
        
        TBCommands(TBNumber) = True
        
        Select Case RecordType
            Case 0: 'spell
                If bLearnSpell Then
                    If UBound(TBFromBadSource()) < TBNumber Then _
                        ReDim Preserve TBFromBadSource(TBNumber)
                    If TBFromBadSource(TBNumber) = True Then
                        Call MarkSpellInGame(nNumber)
                    Else
                        Call MarkSpellInGame(nNumber, "Textblock #" & TBNumber & sSuffix, bLearnSpell)
                    End If
                Else
                    Call MarkSpellInGame(nNumber, "Textblock #" & TBNumber & sSuffix, bLearnSpell)
                End If
                
            Case 1: 'item
                If bGiveItem Then
                    If UBound(TBFromBadSource()) < TBNumber Then _
                        ReDim Preserve TBFromBadSource(TBNumber)
                    If TBFromBadSource(TBNumber) = True Then
                        Call MarkItemInGame(nNumber)
                    Else
                        Call MarkItemInGame(nNumber, "Textblock #" & TBNumber & sSuffix)
                    End If
                Else
                    Call MarkItemInGame(nNumber, "Textblock #" & TBNumber & sSuffix)
                End If
                
            Case 2: 'monster
                Call MarkMonsterInGame(nNumber, "Textblock #" & TBNumber & sSuffix)
                
            Case 3: 'textblock
                If UBound(TBFromBadSource()) < TBNumber Then _
                    ReDim Preserve TBFromBadSource(TBNumber)
                If UBound(TBFromBadSource()) < nNumber Then _
                    ReDim Preserve TBFromBadSource(nNumber)
                If TBFromBadSource(TBNumber) = True Then
                    TBFromBadSource(nNumber) = True
                End If
                
                If bRandom Then
                    Call MarkTBInGame(nNumber, "Textblock(rndm) #" & TBNumber & sSuffix, True)
                    TBCommands(nNumber) = True
                Else
                    Call MarkTBInGame(nNumber, "Textblock #" & TBNumber & sSuffix)
                    TBCommands(GetTextblockLink(nNumber)) = True
                End If
                
        End Select
    Else
        CheckTBString = False
    End If
    x = y1
    GoTo checknext:
End If

End Function

Private Function GetTBPercent(ByVal sWholeData As String, ByVal nCurrentPosition As Long) As String
Dim nPercent As Integer, nLastPercent As Integer, sTest As String, sChar As String
Dim x As Integer, y1 As Integer, y2 As Integer

'make sTest just the the part of the data up until the current position
sTest = Mid(sWholeData, 1, nCurrentPosition - 1)

x = 1
NextLine:
'move x to the position of the first linebreak before the current position
If Not InStr(x, sTest, Chr(10)) = 0 Then

    'get the previous percent
    y2 = InStr(x, sTest, ":")
    If y2 = 0 Then
        GetTBPercent = "(?%)"
        Exit Function
    End If
    
    'set y1 to the position of the first number before the ":"
    y1 = y2 - 1
next_prev:
    If Not y1 = 0 Then
        sChar = Mid(sTest, y1, 1)
        Select Case sChar
            Case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
                y1 = y1 - 1
                GoTo next_prev:
            Case Else:
        End Select
    End If
    
    If Not y2 - y1 + 1 = 0 Then
        nLastPercent = Val(Mid(sTest, y1 + 1, y2 - y1 + 1))
    End If
    
    x = InStr(x, sTest, Chr(10)) + 1
    GoTo NextLine:
End If

sTest = Mid(sWholeData, x, nCurrentPosition - x)

'get the percent for this one
y2 = InStr(1, sTest, ":")
If y2 = 0 Then
    GetTBPercent = "(?%)"
    Exit Function
End If

'set y1 to the position of the first number before the ":"
y1 = y2 - 1
next_num:
If Not y1 = 0 Then
    sChar = Mid(sTest, y1, 1)
    Select Case sChar
        Case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
            y1 = y1 - 1
            GoTo next_num:
        Case Else:
    End Select
End If

If Not y2 - y1 + 1 = 0 Then
    nPercent = Val(Mid(sTest, y1 + 1, y2 - y1 + 1)) - nLastPercent
Else
    GetTBPercent = "(?%)"
    Exit Function
End If

If nPercent = 0 Then
    'if there was no percent found
    GetTBPercent = "(?%)"
Else
    GetTBPercent = "(" & nPercent & "%)"
End If

End Function


Private Function TestItemFail(ByVal sWholeData As String, ByVal nCurrentPosition As Long) As Boolean
Dim sLook As String, sChar As String, sTest As String
Dim x As Integer, y1 As Integer, y2 As Integer, z As Integer, nItem As Long

'make sTest just the the part of the data up until the current position
sTest = Mid(sWholeData, 1, nCurrentPosition - 1)

x = 1
NextLine:
'move x to the position of the first linebreak
If Not InStr(x, sTest, Chr(10)) = 0 Then
    x = InStr(x, sTest, Chr(10)) + 1
    GoTo NextLine:
End If

sTest = Mid(sWholeData, x, nCurrentPosition - x)

For z = 1 To 3
    
    x = 1
    'check for each type of item fail textblock
    Select Case z
        Case 1: sLook = "checkitem "
        Case 2: sLook = "roomitem "    'took out failitem because it means fail if you DO have it
        Case 3: sLook = "takeitem "
    End Select

checknext:
    'if there is one of those strings in there before our current position,
    'see if there is a linebreak between the string and the current position
    '(which would mean it was in a different command string)
    If Not InStr(x, sTest, sLook) = 0 Then

        x = InStr(x, sTest, sLook) 'sets x to the position of the failed string
        
        If z = 2 And x > 4 Then 'check for "failroomitem X" which we dont want to block
            If Mid(sTest, x - 4, 4) = "fail" Then
                x = x + 1
                GoTo checknext:
            End If
        End If
        
        y1 = x + Len(sLook) 'len of string searching (to position y1 at first number)
        y2 = 0
nextnumber:
        sChar = Mid(sTest, y1 + y2, 1)
        Select Case sChar
            Case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
                If Not y1 + y2 - 1 = Len(sTest) Then
                    y2 = y2 + 1
                    GoTo nextnumber:
                End If
            Case Else:
        End Select
        
        If y2 = 0 Then
            'if there were no numbers after the string
            x = y1
            GoTo checknext:
        End If
        
        nItem = Val(Mid(sTest, y1, y2))
    
        'if the item is in the game then we're clear, check for any more matches
        If UBound(ItemInGame()) < nItem Then ReDim Preserve ItemInGame(nItem)
        If ItemInGame(nItem) Then
            x = y1
            GoTo checknext:
        Else
            'item not in game, line fails
            TestItemFail = True
            Exit Function
        End If
    End If
Next z

End Function


Private Sub LocateRecords()
Dim x As Integer

x = 1
lblPanel(1).Caption = ""
lblPanel(0).Caption = "Cross Referencing (" & x & "/" & nPasses & ") ..."
DoEvents
If bStopExport = True Then Exit Sub
Call ScanRooms

DoEvents
If bStopExport = True Then Exit Sub
Call ScanShops

For x = 1 To nPasses
    If bStopExport = True Then Exit Sub
    lblPanel(0).Caption = "Cross Referencing (" & x & "/" & nPasses & ") ..."
    DoEvents
    Call ScanMonsters
    If bStopExport = True Then Exit Sub
    DoEvents
    Call ScanSpells
    If bStopExport = True Then Exit Sub
    DoEvents
    Call ScanTextblocks
    If bStopExport = True Then Exit Sub
    DoEvents
    Call ScanItems
    If bStopExport = True Then Exit Sub
Next x

DoEvents
Call ScanContainers
If bStopExport = True Then Exit Sub
DoEvents
Call ScanGreets

End Sub
Private Sub cmdCancel_Click()

If cmdGo.Enabled = False Then
    bStopExport = True
    DoEvents
Else
    Unload Me
End If

End Sub

Private Sub ExportVersionInfo()
On Error GoTo Error:

tryagain:
If tabInfo.RecordCount <> 0 Then
    tabInfo.MoveFirst
    tabInfo.Delete
    GoTo tryagain:
End If

tabInfo.AddNew
tabInfo.Fields("NMR Version") = sAppVersion

tabInfo.Fields("Dat File Version") = txtDBVersion.Text

tabInfo.Fields("Date") = Date
tabInfo.Fields("Time") = Time
tabInfo.Fields("Legit") = chkLegit.Value

If chkLegit.Value = 1 Then
    tabInfo.Fields("UpdateURL") = "http://www.mudinfo.net/mmudexp.php"
    tabInfo.Fields("Custom") = "Default"
Else
    tabInfo.Fields("UpdateURL") = txtUpdateURL.Text
    tabInfo.Fields("Custom") = txtCustom.Text
End If

tabInfo.Update


Exit Sub
Error:
Call HandleError
End Sub

Private Sub ExportItems()
Dim nStatus As Integer, recnum As Long
Dim x As Long

recnum = 1
nStatus = BTRCALL(BGETFIRST, ItemPosBlock, Itemdatabuf, Len(Itemdatabuf), ByVal ItemKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then
    MsgBox "Items: Could not get first record, Error: " & BtrieveErrorCode(nStatus)
    Exit Sub
End If

lblPanel(0).Caption = "w" & strDatCallLetters & "item2.dat"
lblPanel(1).Caption = recnum

Do While nStatus = 0 And bStopExport = False
    
    RowToStruct Itemdatabuf.buf, ItemFldMap, Itemrec, LenB(Itemrec)
    
    recnum = Itemrec.Number
    lblPanel(1).Caption = recnum
    Call IncreaseProgressBar
    
    If bUpdateExistingADB = True Then
        If tabItems.RecordCount = 0 Then
            tabItems.AddNew
        Else
            tabItems.Index = "pkItems"
            tabItems.Seek "=", Itemrec.Number
            If tabItems.NoMatch = True Then
                tabItems.AddNew
            Else
                tabItems.Edit
            End If
        End If
    Else
        tabItems.AddNew
    End If
    
    tabItems.Fields("Number") = Itemrec.Number
    tabItems.Fields("Name") = ClipNull(Itemrec.Name)
    tabItems.Fields("Limit") = Itemrec.GameLimit
    tabItems.Fields("Encum") = Itemrec.Weight
    tabItems.Fields("ItemType") = Itemrec.Type
    tabItems.Fields("UseCount") = Itemrec.Uses
    tabItems.Fields("Price") = Itemrec.Cost
    tabItems.Fields("Currency") = Itemrec.CostType
    tabItems.Fields("Min") = Itemrec.Minhit
    tabItems.Fields("Max") = Itemrec.Maxhit
    tabItems.Fields("ArmourClass") = Itemrec.AC
    tabItems.Fields("DamageResist") = Itemrec.DR
    tabItems.Fields("WeaponType") = Itemrec.Weapon
    tabItems.Fields("ArmourType") = Itemrec.Armour
    tabItems.Fields("Worn") = Itemrec.WornOn
    tabItems.Fields("Accy") = Itemrec.Accuracy
    tabItems.Fields("Gettable") = Itemrec.Gettable
    tabItems.Fields("StrReq") = Itemrec.ReqStr
    tabItems.Fields("Speed") = Itemrec.Speed
    tabItems.Fields("Not Droppable") = Itemrec.NotDroppable
    tabItems.Fields("Destroy On Death") = Itemrec.DestroyOnDeath
    tabItems.Fields("Retain After Uses") = Itemrec.RetainAfterUses
    tabItems.Fields("In Game") = IIf(bAllInGame, True, False)
    tabItems.Fields("Obtained From") = Chr(0)
    
    For x = 0 To 9
        tabItems.Fields("ClassRest-" & x) = Itemrec.Class(x)
    Next
    
    For x = 0 To 9
        tabItems.Fields("RaceRest-" & x) = Itemrec.Race(x)
    Next
    
    For x = 0 To 9
        tabItems.Fields("NegateSpell-" & x) = Itemrec.Negate(x * 2)
    Next
    
    For x = 0 To 19
        tabItems.Fields("Abil-" & x) = Itemrec.AbilityA(x)
        tabItems.Fields("AbilVal-" & x) = Itemrec.AbilityB(x)
    Next
    
    tabItems.Update
    
    nStatus = BTRCALL(BGETNEXT, ItemPosBlock, Itemdatabuf, Len(Itemdatabuf), ByVal ItemKeyBuffer, KEY_BUF_LEN, 0)
    
    If Not bUseCPU Then DoEvents
    
Loop


End Sub
Private Sub ExportSpells()
Dim nStatus As Integer, recnum As Long, x As Integer

recnum = 1
nStatus = BTRCALL(BGETFIRST, SpellPosBlock, Spelldatabuf, Len(Spelldatabuf), ByVal SpellKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then
    MsgBox "Spells: Could not get first record, Error: " & BtrieveErrorCode(nStatus)
    Exit Sub
End If
   
lblPanel(0).Caption = "w" & strDatCallLetters & "spel2.dat"
lblPanel(1).Caption = recnum

Do While nStatus = 0 And bStopExport = False
    
    RowToStruct Spelldatabuf.buf, SpellFldMap, Spellrec, LenB(Spellrec)
    
    recnum = Spellrec.Number
    lblPanel(1).Caption = recnum
    Call IncreaseProgressBar
    
    If bUpdateExistingADB = True Then
        If tabSpells.RecordCount = 0 Then
            tabSpells.AddNew
        Else
            tabSpells.Index = "pkSpells"
            tabSpells.Seek "=", Spellrec.Number
            If tabSpells.NoMatch = True Then
                tabSpells.AddNew
            Else
                tabSpells.Edit
            End If
        End If
    Else
        tabSpells.AddNew
    End If
    
    tabSpells.Fields("Number") = Spellrec.Number
    tabSpells.Fields("Name") = ClipNull(Spellrec.Name)
    tabSpells.Fields("Short") = ClipNull(Spellrec.ShortName)
    tabSpells.Fields("ReqLevel") = Spellrec.Level
    tabSpells.Fields("EnergyCost") = Spellrec.Energy
    tabSpells.Fields("ManaCost") = Spellrec.Mana
    tabSpells.Fields("MinBase") = Spellrec.Min
    tabSpells.Fields("MaxBase") = Spellrec.Max
    tabSpells.Fields("Diff") = Spellrec.Difficulty
    tabSpells.Fields("Targets") = Spellrec.Target
    tabSpells.Fields("Dur") = Spellrec.duration
    tabSpells.Fields("AttType") = Spellrec.TypeOfAttack
    tabSpells.Fields("Magery") = Spellrec.MageryA
    tabSpells.Fields("MageryLVL") = Spellrec.MageryB
    tabSpells.Fields("Cap") = Spellrec.LevelCap
    tabSpells.Fields("MaxIncLVLs") = Spellrec.LVLSMaxIncr
    tabSpells.Fields("MaxInc") = Spellrec.MaxIncrease
    tabSpells.Fields("MinIncLVLs") = Spellrec.LVLSMinIncr
    tabSpells.Fields("MinInc") = Spellrec.MinIncrease
    tabSpells.Fields("DurIncLVLs") = Spellrec.LVLSDurIncr
    tabSpells.Fields("DurInc") = Spellrec.DurIncrease
    tabSpells.Fields("Learnable") = 0
    tabSpells.Fields("Learned From") = Chr(0)
    tabSpells.Fields("Casted By") = Chr(0)
    
    For x = 0 To 9
        tabSpells.Fields("Abil-" & x) = Spellrec.AbilityA(x)
        tabSpells.Fields("AbilVal-" & x) = Spellrec.AbilityB(x)
    Next

    tabSpells.Update
    
    nStatus = BTRCALL(BGETNEXT, SpellPosBlock, Spelldatabuf, Len(Spelldatabuf), ByVal SpellKeyBuffer, KEY_BUF_LEN, 0)

    If Not bUseCPU Then DoEvents
Loop


End Sub

Private Sub ExportClasses()
Dim nStatus As Integer, recnum As Long, x As Integer

recnum = 1
nStatus = BTRCALL(BGETFIRST, ClassPosBlock, Classdatabuf, Len(Classdatabuf), ByVal ClassKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then
    MsgBox "Classes: Could not get first record, Error: " & BtrieveErrorCode(nStatus)
    Exit Sub
End If

lblPanel(0).Caption = "w" & strDatCallLetters & "clas2.dat"
lblPanel(1).Caption = recnum

Do While nStatus = 0 And bStopExport = False
    
    RowToStruct Classdatabuf.buf, ClassFldMap, Classrec, LenB(Classrec)
    
    recnum = Classrec.Number
    lblPanel(1).Caption = recnum
    Call IncreaseProgressBar
    
    If bUpdateExistingADB = True Then
        If tabClasses.RecordCount = 0 Then
            tabClasses.AddNew
        Else
            tabClasses.Index = "pkClasses"
            tabClasses.Seek "=", Classrec.Number
            If tabClasses.NoMatch = True Then
                tabClasses.AddNew
            Else
                tabClasses.Edit
            End If
        End If
    Else
        tabClasses.AddNew
    End If
    
    tabClasses.Fields("Number") = Classrec.Number
    tabClasses.Fields("Name") = ClipNull(Classrec.Name)
    tabClasses.Fields("MinHits") = Classrec.MinHp
    tabClasses.Fields("MaxHits") = Classrec.MaxHP
    tabClasses.Fields("ExpTable") = Classrec.Exp
    tabClasses.Fields("MageryType") = Classrec.MagicType
    tabClasses.Fields("MageryLVL") = Classrec.MagicLvL
    tabClasses.Fields("WeaponType") = Classrec.Weapon
    tabClasses.Fields("ArmourType") = Classrec.Armour
    tabClasses.Fields("CombatLVL") = Classrec.Combat
    
    For x = 0 To 9
        tabClasses.Fields("Abil-" & x) = Classrec.AbilityA(x)
        tabClasses.Fields("AbilVal-" & x) = Classrec.AbilityB(x)
    Next

    tabClasses.Update
    
    nStatus = BTRCALL(BGETNEXT, ClassPosBlock, Classdatabuf, Len(Classdatabuf), ByVal ClassKeyBuffer, KEY_BUF_LEN, 0)

    If Not bUseCPU Then DoEvents
Loop


End Sub
Private Sub ExportRaces()
Dim nStatus As Integer, recnum As Long, x As Integer

recnum = 1
nStatus = BTRCALL(BGETFIRST, RacePosBlock, Racedatabuf, Len(Racedatabuf), ByVal RaceKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then
    MsgBox "Races: Could not get first record, Error: " & BtrieveErrorCode(nStatus)
    Exit Sub
End If

lblPanel(0).Caption = "w" & strDatCallLetters & "race2.dat"
lblPanel(1).Caption = recnum

Do While nStatus = 0 And bStopExport = False
    
    RowToStruct Racedatabuf.buf, RaceFldMap, Racerec, LenB(Racerec)
        
    recnum = Racerec.Number
    lblPanel(1).Caption = recnum
    Call IncreaseProgressBar
    
    If bUpdateExistingADB = True Then
        If tabRaces.RecordCount = 0 Then
            tabRaces.AddNew
        Else
            tabRaces.Index = "pkRaces"
            tabRaces.Seek "=", Racerec.Number
            If tabRaces.NoMatch = True Then
                tabRaces.AddNew
            Else
                tabRaces.Edit
            End If
        End If
    Else
        tabRaces.AddNew
    End If
    
    tabRaces.Fields("Number") = Racerec.Number
    tabRaces.Fields("Name") = ClipNull(Racerec.Name)
    tabRaces.Fields("mINT") = Racerec.MinInt
    tabRaces.Fields("mWIL") = Racerec.MinWil
    tabRaces.Fields("mSTR") = Racerec.MinStr
    tabRaces.Fields("mHEA") = Racerec.MinHea
    tabRaces.Fields("mAGL") = Racerec.MinAgl
    tabRaces.Fields("mCHM") = Racerec.MinChm
    tabRaces.Fields("xINT") = Racerec.MaxInt
    tabRaces.Fields("xWIL") = Racerec.MaxWil
    tabRaces.Fields("xSTR") = Racerec.MaxStr
    tabRaces.Fields("xHEA") = Racerec.MaxHea
    tabRaces.Fields("xAGL") = Racerec.MaxAgl
    tabRaces.Fields("xCHM") = Racerec.MaxChm
    tabRaces.Fields("HPPerLVL") = Racerec.HPBonus
    tabRaces.Fields("ExpTable") = Racerec.ExpChart
    tabRaces.Fields("BaseCP") = Racerec.CP
    
    For x = 0 To 9
        tabRaces.Fields("Abil-" & x) = Racerec.AbilityA(x)
        tabRaces.Fields("AbilVal-" & x) = Racerec.AbilityB(x)
    Next

    tabRaces.Update
    
    nStatus = BTRCALL(BGETNEXT, RacePosBlock, Racedatabuf, Len(Racedatabuf), ByVal RaceKeyBuffer, KEY_BUF_LEN, 0)

    If Not bUseCPU Then DoEvents
Loop


End Sub
Private Sub ExportShops()
Dim nStatus As Integer, recnum As Long, x As Long

recnum = 1
nStatus = BTRCALL(BGETFIRST, ShopPosBlock, Shopdatabuf, Len(Shopdatabuf), ByVal ShopKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then
    MsgBox "Shops: Could not get first record, Error: " & BtrieveErrorCode(nStatus)
    Exit Sub
End If

lblPanel(0).Caption = "w" & strDatCallLetters & "shop2.dat"
lblPanel(1).Caption = recnum

Do While nStatus = 0 And bStopExport = False
    
    RowToStruct Shopdatabuf.buf, ShopFldMap, Shoprec, LenB(Shoprec)
    
    recnum = Shoprec.Number
    lblPanel(1).Caption = recnum
    Call IncreaseProgressBar
    
    If bUpdateExistingADB = True Then
        If tabShops.RecordCount = 0 Then
            tabShops.AddNew
        Else
            tabShops.Index = "pkShops"
            tabShops.Seek "=", Shoprec.Number
            If tabShops.NoMatch = True Then
                tabShops.AddNew
            Else
                tabShops.Edit
            End If
        End If
    Else
        tabShops.AddNew
    End If
    
    tabShops.Fields("Number") = Shoprec.Number
    tabShops.Fields("Name") = ClipNull(Shoprec.Name)
    tabShops.Fields("ShopType") = Shoprec.ShopType
    tabShops.Fields("MinLVL") = Shoprec.ShopMinLvL
    tabShops.Fields("MaxLVL") = Shoprec.ShopMaxLvl
    tabShops.Fields("Markup%") = Shoprec.ShopMarkUp
    tabShops.Fields("ClassRest") = Shoprec.ShopClassLimit
    tabShops.Fields("In Game") = IIf(bAllInGame, True, False)
    tabShops.Fields("Assigned To") = Chr(0)
    
    If Shoprec.ShopType = 11 Then 'gang shop
        For x = 0 To 19
            tabShops.Fields("Item-" & x) = 0
            tabShops.Fields("Max-" & x) = 0
            tabShops.Fields("Time-" & x) = 0
            tabShops.Fields("Amount-" & x) = 0
            tabShops.Fields("%-" & x) = 0
        Next
    Else
        For x = 0 To 19
            tabShops.Fields("Item-" & x) = Shoprec.ShopItemNumber(x)
            tabShops.Fields("Max-" & x) = Shoprec.ShopMax(x)
            tabShops.Fields("Time-" & x) = Shoprec.ShopRgnTime(x)
            tabShops.Fields("Amount-" & x) = Shoprec.ShopRgnNumber(x)
            tabShops.Fields("%-" & x) = Shoprec.ShopRgnPercentage(x)
        Next
    End If
    
    tabShops.Update
    
    nStatus = BTRCALL(BGETNEXT, ShopPosBlock, Shopdatabuf, Len(Shopdatabuf), ByVal ShopKeyBuffer, KEY_BUF_LEN, 0)

    If Not bUseCPU Then DoEvents
Loop


End Sub
Private Sub ExportMonsters()
Dim nStatus As Integer, recnum As Long, x As Long

recnum = 1
nStatus = BTRCALL(BGETFIRST, MonsterPosBlock, Monsterdatabuf, Len(Monsterdatabuf), ByVal MonsterKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then
    MsgBox "Monsters: Could not get first record, Error: " & BtrieveErrorCode(nStatus)
    Exit Sub
End If

lblPanel(0).Caption = "w" & strDatCallLetters & "knms2.dat"
lblPanel(1).Caption = recnum

Do While nStatus = 0 And bStopExport = False
    
    RowToStruct Monsterdatabuf.buf, MonsterFldMap, Monsterrec, LenB(Monsterrec)
    
    recnum = Monsterrec.Number
    lblPanel(1).Caption = recnum
    Call IncreaseProgressBar
    
    If bUpdateExistingADB = True Then
        If tabMonsters.RecordCount = 0 Then
            tabMonsters.AddNew
        Else
            tabMonsters.Index = "pkMonsters"
            tabMonsters.Seek "=", Monsterrec.Number
            If tabMonsters.NoMatch = True Then
                tabMonsters.AddNew
            Else
                tabMonsters.Edit
            End If
        End If
    Else
        tabMonsters.AddNew
    End If
    
    tabMonsters.Fields("Number") = Monsterrec.Number
    tabMonsters.Fields("Name") = ClipNull(Monsterrec.Name)
    tabMonsters.Fields("Weapon") = Monsterrec.WeaponNumber
    tabMonsters.Fields("ArmourClass") = Monsterrec.AC
    tabMonsters.Fields("DamageResist") = Monsterrec.DR
    tabMonsters.Fields("Follow%") = Monsterrec.Follow
    tabMonsters.Fields("MagicRes") = Monsterrec.MR
    tabMonsters.Fields("EXP") = SLong2ULong(Monsterrec.Experience)
    
    If eDatFileVersion >= v111j Then
        tabMonsters.Fields("ExpMulti") = SLong2ULong(Monsterrec.ExpMulti)
    End If
    
    tabMonsters.Fields("HP") = Monsterrec.Hitpoints
    tabMonsters.Fields("GreetTXT") = Monsterrec.GreetTxt
    tabMonsters.Fields("HPRegen") = Monsterrec.HPRegen
    tabMonsters.Fields("CharmLvL") = Monsterrec.CharmLvL
    tabMonsters.Fields("Type") = Monsterrec.Type
    tabMonsters.Fields("Undead") = Monsterrec.Undead
    tabMonsters.Fields("Align") = Monsterrec.Alignment
    tabMonsters.Fields("RegenTime") = Monsterrec.RegenTime
    tabMonsters.Fields("R") = Monsterrec.Runic
    tabMonsters.Fields("P") = Monsterrec.Platinum
    tabMonsters.Fields("G") = Monsterrec.Gold
    tabMonsters.Fields("S") = Monsterrec.Silver
    tabMonsters.Fields("C") = Monsterrec.Copper
    tabMonsters.Fields("DeathSpell") = Monsterrec.DeathSpellNumber
    tabMonsters.Fields("CreateSpell") = Monsterrec.CreateSpellNumber
    tabMonsters.Fields("In Game") = IIf(bAllInGame, True, False)
    tabMonsters.Fields("Summoned By") = Chr(0)
    
    For x = 0 To 4
        tabMonsters.Fields("AttType-" & x) = Monsterrec.AttackType(x)
        tabMonsters.Fields("AttAcc-" & x) = Monsterrec.AttackAccuSpell(x)
        tabMonsters.Fields("Att%-" & x) = Monsterrec.AttackPer(x)
        tabMonsters.Fields("AttMin-" & x) = Monsterrec.AttackMinHCastPer(x)
        tabMonsters.Fields("AttMax-" & x) = Monsterrec.AttackMaxHCastLvl(x)
        tabMonsters.Fields("AttEnergy-" & x) = Monsterrec.AttackEnergy(x)
        tabMonsters.Fields("AttHitSpell-" & x) = Monsterrec.AttackHitSpell(x)
        tabMonsters.Fields("MidSpell-" & x) = Monsterrec.SpellNumber(x)
        tabMonsters.Fields("MidSpell%-" & x) = Monsterrec.SpellCastPer(x)
        tabMonsters.Fields("MidSpellLVL-" & x) = Monsterrec.SpellCastLvl(x)
    Next
    
    For x = 0 To 9
        tabMonsters.Fields("DropItem-" & x) = Monsterrec.ItemNumber(x)
        'tabMonsters.Fields("DropItemUses-" & x) = Monsterrec.ItemUses(x)
        tabMonsters.Fields("DropItem%-" & x) = Monsterrec.ItemDropPer(x)
    Next
    
    For x = 0 To 9
        tabMonsters.Fields("Abil-" & x) = Monsterrec.AbilityA(x)
        tabMonsters.Fields("AbilVal-" & x) = Monsterrec.AbilityB(x)
    Next

    tabMonsters.Update
    
    nStatus = BTRCALL(BGETNEXT, MonsterPosBlock, Monsterdatabuf, Len(Monsterdatabuf), ByVal MonsterKeyBuffer, KEY_BUF_LEN, 0)

    If Not bUseCPU Then DoEvents
Loop


End Sub
Private Sub ExportRooms()
On Error GoTo Error:
Dim nStatus As Integer, recnum As Long, sDir As String, sTemp As String
Dim sActionNum As String, sMonsters As String, nAction As Integer, nNumActions As Long
Dim nTempMap As Long, nTempRoom As Long, sActions() As String, sNewActions() As String
Dim x As Integer, y As Integer, z As Integer
Dim x2 As Integer, y2 As Integer, z2 As Integer

If chkLegit.Value = 0 And chkExcludeRooms.Value = 1 And chkNoRooms.Value = 1 Then Exit Sub

nStatus = BTRCALL(BGETFIRST, RoomPosBlock, Roomdatabuf, Len(Roomdatabuf), ByVal RoomKeyBuffer, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then
    MsgBox "Rooms: Could not get first record, Error: " & BtrieveErrorCode(nStatus)
    Exit Sub
End If

lblPanel(0).Caption = "w" & strDatCallLetters & "knms2.dat"
lblPanel(1).Caption = "creating group/index list ..."
DoEvents
Call CreateMGIL

recnum = 0
lblPanel(0).Caption = "w" & strDatCallLetters & "mp002.dat"
lblPanel(1).Caption = recnum
DoEvents
nStatus = BTRCALL(BGETFIRST, RoomPosBlock, Roomdatabuf, Len(Roomdatabuf), ByVal RoomKeyBuffer, KEY_BUF_LEN, 0)
Do While nStatus = 0 And bStopExport = False
    RoomRowToStruct Roomdatabuf.buf
    
    recnum = recnum + 1
    lblPanel(1).Caption = recnum
    Call IncreaseProgressBar
    
'    'only going to export the names that have shops assigned
'    If Not Roomrec.Type = 1 Or Roomrec.ShopNum = 0 Then GoTo skiproom:
    
    If UCase(Left(Roomrec.Name, 11)) = "BUFFER ROOM" Then GoTo skiproom:
    
    If bUpdateExistingADB = True Then
        If tabRooms.RecordCount = 0 Then
            tabRooms.AddNew
        Else
            tabRooms.Index = "idxRooms"
            tabRooms.Seek "=", Roomrec.MapNumber, Roomrec.RoomNumber
            If tabRooms.NoMatch = True Then
                tabRooms.AddNew
            Else
                tabRooms.Edit
            End If
        End If
    Else
        tabRooms.AddNew
    End If
    
    tabRooms.Fields("Map Number") = Roomrec.MapNumber
    tabRooms.Fields("Room Number") = Roomrec.RoomNumber
    tabRooms.Fields("Name") = ClipNull(Roomrec.Name)
    
    'check for excluded room
    If Not ExcludedRooms(1, 0) = -1 Then
        For x = 0 To UBound(ExcludedRooms(), 2)
            If Roomrec.MapNumber = ExcludedRooms(1, x) Then
                If Roomrec.RoomNumber >= ExcludedRooms(2, x) Then
                    If Roomrec.RoomNumber <= ExcludedRooms(3, x) Then
                        
                        tabRooms.Fields("Shop") = 0
                        tabRooms.Fields("Spell") = 0
                        tabRooms.Fields("NPC") = 0
                        tabRooms.Fields("CMD") = 0
                        tabRooms.Fields("Placed") = Chr(0)
                        
                        For y = 0 To 9
                                Select Case y
                                    Case 0: sDir = "N"
                                    Case 1: sDir = "S"
                                    Case 2: sDir = "E"
                                    Case 3: sDir = "W"
                                    Case 4: sDir = "NE"
                                    Case 5: sDir = "NW"
                                    Case 6: sDir = "SE"
                                    Case 7: sDir = "SW"
                                    Case 8: sDir = "U"
                                    Case 9: sDir = "D"
                                End Select
                                    
                                tabRooms.Fields(sDir) = Chr(0)
                        Next y
                        tabRooms.Fields("Lair") = Chr(0)
                        
                        GoTo excluded:
                    End If
                End If
            End If
        Next x
    End If
    
    If Roomrec.Type = 1 And Roomrec.ShopNum > 0 Then
        tabRooms.Fields("Shop") = Roomrec.ShopNum
    Else
        tabRooms.Fields("Shop") = 0
    End If
    
    tabRooms.Fields("Spell") = Roomrec.Spell
    tabRooms.Fields("NPC") = Roomrec.PermNPC
    tabRooms.Fields("CMD") = Roomrec.CmdText
    
    sTemp = ""
    For x = 0 To 9
        If Roomrec.PlacedItems(x) > 0 Then sTemp = sTemp & Roomrec.PlacedItems(x) & ","
    Next x
    tabRooms.Fields("Placed") = sTemp & Chr(0)
    sTemp = ""
    
    ReDim sActions(0 To 9, 0 To 9, 1 To 2)
    'exit number, action number, 1=room - 2=string
    
    ReDim sNewActions(0 To 9)
    'action string for exit
    
    For x = 0 To 9
        Select Case x
            Case 0: sDir = "N"
            Case 1: sDir = "S"
            Case 2: sDir = "E"
            Case 3: sDir = "W"
            Case 4: sDir = "NE"
            Case 5: sDir = "NW"
            Case 6: sDir = "SE"
            Case 7: sDir = "SW"
            Case 8: sDir = "U"
            Case 9: sDir = "D"
        End Select
            
        If Not Roomrec.RoomExit(x) = 0 Then
            Select Case Roomrec.RoomType(x)
                Case 0: 'Normal
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x)
                    
                Case 1: 'Spell
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x)
                
                Case 2: 'Key
                    sTemp = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & " (Key: " & Roomrec.Para1(x)
                    If Not Roomrec.Para3(x) = 0 Then
                        sTemp = sTemp & " [or " & IIf(Roomrec.Para3(x) < 0, Abs(Roomrec.Para3(x) - 1), "any") _
                            & " picklocks])"
                    Else
                        sTemp = sTemp & ")"
                    End If
                    tabRooms.Fields(sDir) = sTemp
                    
                Case 3: 'Item
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & " (Item: " & Roomrec.Para1(x) & ")"
                    
                Case 4: 'Toll
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & " (Toll: " & Roomrec.Para1(x) & ")"
            
                Case 5: 'Action
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x)
                
                Case 6: 'Hidden
                    Select Case Roomrec.Para1(x)
                        Case 1, 3: 'passable
                            sTemp = " (Hidden/Passable)"
                        Case 2, 4: 'searchable
                            sTemp = " (Hidden/Searchable)"
                        Case Else:
                            If Not Roomrec.Para2(x) = 0 Then 'does it require more than 1 action?
                                If Roomrec.Para2(x) < 0 Then
                                    sTemp = " (Hidden/Needs " & Abs(Roomrec.Para2(x)) & " Actions, any order)"
                                Else
                                    sTemp = " (Hidden/Needs " & Roomrec.Para2(x) & " Actions, specific order)"
                                End If
                            Else
                                sTemp = " (Hidden/Unknown)"
                            End If
                            
                    End Select
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & sTemp
                    
                Case 7, 11: 'Door
                    If Roomrec.Para4(x) <= 0 Then 'para 4 is key req
                        sTemp = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & " (Door"
                        
                        If Not Roomrec.Para2(x) = 0 Then
                            sTemp = sTemp & " [" & IIf(Roomrec.Para2(x) < 0, Abs(Roomrec.Para2(x) - 1), "any") _
                                & " picklocks/strength])"
                        Else
                            sTemp = sTemp & ")"
                        End If
                    Else
                        sTemp = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & " (Key: " & Roomrec.Para4(x)
                        
                        If Not Roomrec.Para2(x) = 0 Then
                            sTemp = sTemp & " [or " & IIf(Roomrec.Para2(x) < 0, Abs(Roomrec.Para2(x) - 1), "any") _
                                & " picklocks/strength])"
                        Else
                            sTemp = sTemp & ")"
                        End If
                    End If
                    
                    
                    
                    tabRooms.Fields(sDir) = sTemp
                    
                Case 8: 'Map Change
                    tabRooms.Fields(sDir) = Roomrec.Para1(x) & "/" & Roomrec.RoomExit(x)
                    
                Case 9: 'Trap
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & " (Trap, " & Roomrec.Para1(x) & " damage)"
                    
                Case 10: 'Text
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & " (Text: " & GetMessages(Roomrec.Para1(x), -1) & ")"
                    
' moved to door               Case 11: 'Gate
'                    If Roomrec.Para4(x) = 0 Then 'para 4 is key req
'                        sTemp = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & " (Gate"
'
'                        If Not Roomrec.Para2(x) = 0 Then
'                            sTemp = sTemp & " [" & Abs(Roomrec.Para2(x)) & " picklocks])"
'                        Else
'                            sTemp = sTemp & ")"
'                        End If
'                    Else
'                        sTemp = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & " (Key: " & Roomrec.Para4(x)
'
'                        If Not Roomrec.Para2(x) = 0 Then
'                            sTemp = sTemp & " [or " & Abs(Roomrec.Para2(x)) & " picklocks])"
'                        Else
'                            sTemp = sTemp & ")"
'                        End If
'                    End If
'
'                    tabRooms.Fields(sDir) = sTemp
                    
                Case 12: 'Remote Action
                    
                    If Roomrec.RoomNumber = Roomrec.RoomExit(x) Then
                        sTemp = "[on the " & GetRoomExits(Roomrec.Para2(x) Mod 10, False) _
                            & " exit of this room]: "
                    Else
                        sTemp = "[on the " & GetRoomExits(Roomrec.Para2(x) Mod 10, False) _
                            & " exit of room " & Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & "]: "
                    End If
                    
                    sTemp = sTemp & GetMessages(Roomrec.Para1(x), -1)
                    
                    If Not Roomrec.Para4(x) = 0 Then sTemp = sTemp & " (Item: " & Roomrec.Para4(x) & ")"
                    
                    
                    If Roomrec.Para2(x) > 9 And Roomrec.Para2(x) < 100 Then
                        If Not Roomrec.RoomExit(x) = Roomrec.RoomNumber Then
                            nTempMap = Roomrec.MapNumber
                            nTempRoom = Roomrec.RoomNumber
                            
                            nNumActions = GetTotalActions(Roomrec.MapNumber, Roomrec.RoomExit(x), Roomrec.Para2(x) Mod 10)

                            RoomKeyStruct.MapNum = nTempMap
                            RoomKeyStruct.RoomNum = nTempRoom
                            nStatus = BTRCALL(BGETEQUAL, RoomPosBlock, Roomdatabuf, Len(Roomdatabuf), ByVal RoomKeyStruct, KEY_BUF_LEN, 0)
                            If Not nStatus = 0 Then
                                MsgBox "Error regetting room " & nTempMap & "/" & nTempRoom, vbCritical
                                bStopExport = True
                                Exit Sub
                            Else
                                Call RoomRowToStruct(Roomdatabuf.buf)
                            End If
                        Else
                            If Roomrec.RoomType(Roomrec.Para2(x) Mod 10) = 6 Then 'hidden/action
                                nNumActions = Abs(Roomrec.Para2(Roomrec.Para2(x) Mod 10))
                            Else
                                nNumActions = -1
                            End If
                        End If
                        
                        If nNumActions > 0 And nNumActions < 10 Then
                            nAction = Fix(Roomrec.Para2(x) / 10)
                            
                            nAction = nNumActions - nAction + 1
                            
                            sTemp = "Action#" & nAction & " " & sTemp
                            
                            sActions(x, nAction, 1) = Roomrec.RoomExit(x)
                            sActions(x, nAction, 2) = sTemp
                            sNewActions(x) = "open"
                        Else
                            sTemp = "Action " & sTemp
                            tabRooms.Fields(sDir) = sTemp
                        End If
                    Else
                        sTemp = "Action " & sTemp
                        tabRooms.Fields(sDir) = sTemp
                    End If
                    
                Case 13: 'Class
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & " (Class: " & Roomrec.Para1(x) & " OK, " & Roomrec.Para2(x) & " NO)"
                    
                Case 14: 'Race
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & " (Race: " & Roomrec.Para1(x) & " OK, " & Roomrec.Para2(x) & " NO)"
                    
                Case 15: 'Level
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & " (Level: " & Roomrec.Para1(x) & " to " & Roomrec.Para2(x) & ")"
                    
                Case 16: 'Timed
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & " (Timed: " & Roomrec.Para2(x) & "*5 minutes)"
                    
                Case 17: 'Ticket
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & " (Ticket/Item: " & Roomrec.Para1(x) & ")"
                    
                Case 18: 'User Count
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & " (Max Users: " & Roomrec.Para1(x) & ")"
                    
                Case 19: 'Block Guard
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) '& " (Block Guard)"
                    
                Case 20: 'Alignment
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) _
                        & " (Alignment: " & GetAlignmentValue(Roomrec.Para1(x)) & " to " _
                        & GetAlignmentValue(Roomrec.Para2(x)) & ")"
                    
                Case 21: 'Delay
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) '& " (Delay?)"
                    
                Case 22: 'Cast
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & " (Cast: " & "pre-" & Roomrec.Para1(x) & ", post-" & Roomrec.Para2(x) & ")"
                    
                Case 23: 'Ability
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & " (Ability: " & Roomrec.Para1(x) & " w/value " & Roomrec.Para2(x) & " to " & Roomrec.Para3(x) & ")"
                    
                Case 24: 'Spell Trap
                    tabRooms.Fields(sDir) = Roomrec.MapNumber & "/" & Roomrec.RoomExit(x) & " (Spell Trap: " & Roomrec.Para1(x) & ")"
                    
            End Select
        Else
            tabRooms.Fields(sDir) = 0
        End If
nextexit:
    Next x
    
    For x = 0 To 9
        For y = 0 To 9
            nTempRoom = Val(sActions(x, y, 1))
            If nTempRoom > 0 Then
                z = 1 'action number
nextaction:
                If z = 10 Then GoTo doneaction:
                For x2 = 0 To 9
                    If sActions(x2, z, 1) = CStr(nTempRoom) Then
                        For y2 = 0 To 9
                            If sNewActions(y2) = "open" Then
                                sNewActions(y2) = sActions(x2, z, 2)
                                GoTo foundaction:
                            End If
                        Next y2
                    End If
                Next x2
foundaction:
                z = z + 1
                GoTo nextaction:
doneaction:
            End If
        Next y
    Next x
    
    For x = 0 To 9
        If Not sNewActions(x) = "" Then
            Select Case x
                Case 0: sDir = "N"
                Case 1: sDir = "S"
                Case 2: sDir = "E"
                Case 3: sDir = "W"
                Case 4: sDir = "NE"
                Case 5: sDir = "NW"
                Case 6: sDir = "SE"
                Case 7: sDir = "SW"
                Case 8: sDir = "U"
                Case 9: sDir = "D"
            End Select
            tabRooms.Fields(sDir) = sNewActions(x)
        End If
    Next x
    
    
    sMonsters = ""
    If Not Roomrec.MaxIndex = 0 And Roomrec.Type = 3 Then '3=lair
        If UBound(MGIL(), 2) < Roomrec.MinIndex Then ReDim Preserve MGIL(UBound(MGIL(), 1), Roomrec.MinIndex)
        If UBound(MGIL(), 2) < Roomrec.MaxIndex Then ReDim Preserve MGIL(UBound(MGIL(), 1), Roomrec.MaxIndex)
        
        For x = Roomrec.MinIndex To Roomrec.MaxIndex
            For y = 0 To 10 '20
                If Not MGIL(Roomrec.MonsterType, x).nNumber(y) = 0 Then
                    If sMonsters = "" Then
                        sMonsters = "(Max " & Roomrec.MaxRegen & "): "
                    End If
                    sMonsters = sMonsters & MGIL(Roomrec.MonsterType, x).nNumber(y) & ","
                End If
            Next y
        Next x
    End If
    If sMonsters = "" Then sMonsters = Chr(0)
    tabRooms.Fields("Lair") = sMonsters

'    For x = 0 To 9
'        tabRooms.Fields("Exit " & x) = Roomrec.RoomExit(x)
'        tabRooms.Fields("Type " & x) = Roomrec.RoomType(x)
'        tabRooms.Fields("Para1 " & x) = Roomrec.Para1(x)
'        tabRooms.Fields("Para2 " & x) = Roomrec.Para2(x)
'        tabRooms.Fields("Para3 " & x) = Roomrec.Para3(x)
'        tabRooms.Fields("Para4 " & x) = Roomrec.Para4(x)
'    Next

excluded:

    tabRooms.Update

skiproom:
    nStatus = BTRCALL(BGETNEXT, RoomPosBlock, Roomdatabuf, Len(Roomdatabuf), ByVal RoomKeyBuffer, KEY_BUF_LEN, 0)
    
    If Not bUseCPU Then DoEvents
Loop

FinishedAccess:
Erase sActions
Erase sNewActions
Exit Sub
Error:
On Error Resume Next
lblPanel(1).Caption = Roomrec.MapNumber & "/" & Roomrec.RoomNumber
DoEvents
Call HandleError("ExportRooms")
bStopExport = True
Erase sActions
Erase sNewActions
End Sub

Private Function CheckVersion() As Boolean
On Error GoTo Error:
Dim nYesNo As Integer, sVer As String, sCurrentVer As String, sNMRVer As String

CheckVersion = False

If tabInfo.RecordCount = 0 Then
    nYesNo = MsgBox("Unable to verify export file version information, continue anyway?", vbYesNo + vbQuestion)
    If nYesNo = vbYes Then CheckVersion = True
    Exit Function
End If

tabInfo.MoveLast
sVer = tabInfo.Fields("Dat File Version")
sNMRVer = tabInfo.Fields("NMR Version")
sCurrentVer = FriendlyDatVersion(eDatFileVersion)

If Not sVer = sCurrentVer Or Not sNMRVer = sAppVersion Then
    nYesNo = MsgBox("Warning, current NMR Version/Dat File Version does not match the export file's versions." & vbCrLf _
        & "Current: " & sAppVersion & "/" & sCurrentVer & ", Export file: " & sNMRVer & "/" & sVer & vbCrLf & vbCrLf _
        & "Often the export database is updated and changed between releases as new fields are found." & vbCrLf _
        & "Errors may occur, Continue anyway?", vbYesNo + vbQuestion)
    If nYesNo = vbNo Then Exit Function
End If

CheckVersion = True

Exit Function
Error:
Call HandleError
nYesNo = MsgBox("Unable to verify export file version information, continue anyway?", vbYesNo + vbQuestion)
If nYesNo = vbYes Then CheckVersion = True
End Function

Private Function CreateDatabase() As Integer
On Error GoTo Error:
Dim sTemp As String, nYesNo As Integer, catDB As ADOX.Catalog
Dim fso As FileSystemObject, x As Integer, nTemp As Integer, nTemp2 As Integer

CreateDatabase = 0

CommonDialog1.Filter = "MDB Files (*.mdb)|*.mdb"
CommonDialog1.DialogTitle = "Save As ..."

sTemp = ReadINI("Settings", "FileName", sConfigFile)
If Len(sTemp) < 5 Then sTemp = "data-" & RemoveCharacter(txtCustom.Text, " ") & ".mdb"

CommonDialog1.FileName = sTemp
CommonDialog1.InitDir = sExportPath

On Error GoTo canceled:
CommonDialog1.ShowSave
If CommonDialog1.FileName = "" Then GoTo canceled:

On Error GoTo Error:

sDataSource = CommonDialog1.FileName
If LCase(Right(sDataSource, 4)) <> ".mdb" Then sDataSource = sDataSource & ".mdb"

Set fso = CreateObject("Scripting.FileSystemObject")

If fso.FileExists(sDataSource) = True Then
    nYesNo = MsgBox(Chr(34) & sDataSource & Chr(34) & " already exists." & vbCrLf & vbCrLf _
        & "Attempt to add to and/or update it?" & vbCrLf & vbCrLf _
        & "Click Yes to update, No to delete and create new, or Cancel to cancel.", vbYesNoCancel + vbQuestion, "File already exits...")

    If nYesNo = vbNo Then
        fso.DeleteFile sDataSource, True
    ElseIf nYesNo = vbYes Then
        CreateDatabase = 2
        Set fso = Nothing
        Exit Function
    Else
        CreateDatabase = 3
        Set fso = Nothing
        Exit Function
    End If
End If

bUpdateExistingADB = False
lblPanel(1).Caption = "Creating Database..."
DoEvents

Set catDB = New ADOX.Catalog
catDB.Create "Provider=Microsoft.Jet.OLEDB.4.0;" & "Data Source=" & sDataSource
Set catDB = Nothing

CreateDatabase = 1

Set fso = Nothing
Set catDB = Nothing

Exit Function
canceled:
CreateDatabase = 3
Set fso = Nothing
Set catDB = Nothing
Exit Function
Error:
Call HandleError
Set fso = Nothing
Set catDB = Nothing

End Function

Private Function CreateTables() As Boolean
On Error GoTo Error:
Dim catNewDB As ADOX.Catalog
Dim tabNewMonsters As ADOX.Table, tabNewSpells As ADOX.Table, tabNewShops As ADOX.Table
Dim tabNewClasses As ADOX.Table, tabNewRaces As ADOX.Table, tabNewItems As ADOX.Table
Dim tabNewInfo As ADOX.Table, tabNewRooms As ADOX.Table, tabNewTBInfo As ADOX.Table

Dim pkClasses As New ADOX.Key
Dim pkRaces As New ADOX.Key
Dim pkItems As New ADOX.Key
Dim pkMonsters As New ADOX.Key
Dim pkShops As New ADOX.Key
Dim pkSpells As New ADOX.Key
Dim pkTBInfo As New ADOX.Key
Dim idxRooms As New ADOX.Index
Dim x As Integer

CreateTables = False

Set catNewDB = New ADOX.Catalog
Set tabNewRaces = New ADOX.Table
Set tabNewClasses = New ADOX.Table
Set tabNewSpells = New ADOX.Table
Set tabNewShops = New ADOX.Table
Set tabNewMonsters = New ADOX.Table
Set tabNewItems = New ADOX.Table
Set tabNewInfo = New ADOX.Table
Set tabNewRooms = New ADOX.Table
Set tabNewTBInfo = New ADOX.Table

'open the database
catNewDB.ActiveConnection = "Provider=Microsoft.Jet.OLEDB.4.0;" & "Data Source=" & sDataSource
'create new table object

DoEvents
With tabNewRooms
    .Name = "Rooms"
    .Columns.Append "Map Number", adInteger
    .Columns.Append "Room Number", adInteger
    .Columns.Append "Name", adVarWChar, 55
    .Columns.Append "Shop", adInteger
    .Columns.Append "NPC", adInteger
    .Columns.Append "CMD", adInteger
    .Columns.Append "Spell", adInteger
    .Columns.Append "Lair", adVarWChar
    .Columns.Append "Placed", adVarWChar
    .Columns.Append "N", adVarWChar
    .Columns.Append "S", adVarWChar
    .Columns.Append "E", adVarWChar
    .Columns.Append "W", adVarWChar
    .Columns.Append "NE", adVarWChar
    .Columns.Append "NW", adVarWChar
    .Columns.Append "SE", adVarWChar
    .Columns.Append "SW", adVarWChar
    .Columns.Append "U", adVarWChar
    .Columns.Append "D", adVarWChar
    
'    For x = 0 To 9
'        .Columns.Append CStr("Exit " & x), adInteger
'        .Columns.Append CStr("Type " & x), adInteger
'        .Columns.Append CStr("Para1 " & x), adInteger
'        .Columns.Append CStr("Para2 " & x), adInteger
'        .Columns.Append CStr("Para3 " & x), adInteger
'        .Columns.Append CStr("Para4 " & x), adInteger
'    Next

End With
catNewDB.Tables.Append tabNewRooms

DoEvents
With tabNewClasses
    .Name = "Classes"
    .Columns.Append "Number", adInteger
    .Columns.Append "Name", adVarWChar, 29
    .Columns.Append "MinHits", adInteger
    .Columns.Append "MaxHits", adInteger
    .Columns.Append "ExpTable", adInteger
    .Columns.Append "MageryType", adInteger
    .Columns.Append "MageryLVL", adInteger
    .Columns.Append "WeaponType", adInteger
    .Columns.Append "ArmourType", adInteger
    .Columns.Append "CombatLVL", adInteger
    
    For x = 0 To 9
        .Columns.Append CStr("Abil-" & x), adInteger
        .Columns.Append CStr("AbilVal-" & x), adInteger
    Next
    
End With
catNewDB.Tables.Append tabNewClasses

DoEvents
With tabNewRaces
    .Name = "Races"
    .Columns.Append "Number", adInteger
    .Columns.Append "Name", adVarWChar, 29
    .Columns.Append "mINT", adInteger
    .Columns.Append "mWIL", adInteger
    .Columns.Append "mSTR", adInteger
    .Columns.Append "mHEA", adInteger
    .Columns.Append "mAGL", adInteger
    .Columns.Append "mCHM", adInteger
    .Columns.Append "xINT", adInteger
    .Columns.Append "xWIL", adInteger
    .Columns.Append "xSTR", adInteger
    .Columns.Append "xHEA", adInteger
    .Columns.Append "xAGL", adInteger
    .Columns.Append "xCHM", adInteger
    .Columns.Append "HPPerLVL", adInteger
    .Columns.Append "ExpTable", adInteger
    .Columns.Append "BaseCP", adInteger
    
    For x = 0 To 9
        .Columns.Append CStr("Abil-" & x), adInteger
        .Columns.Append CStr("AbilVal-" & x), adInteger
    Next
    
End With
catNewDB.Tables.Append tabNewRaces

DoEvents
With tabNewSpells
    .Name = "Spells"
    .Columns.Append "Number", adInteger
    .Columns.Append "Name", adVarWChar, 29
    .Columns.Append "Short", adVarWChar, 5
    .Columns.Append "ReqLevel", adInteger
    .Columns.Append "EnergyCost", adInteger
    .Columns.Append "ManaCost", adInteger
    .Columns.Append "MinBase", adInteger
    .Columns.Append "MaxBase", adInteger
    .Columns.Append "Diff", adInteger
    .Columns.Append "Targets", adInteger
    .Columns.Append "Dur", adInteger
    .Columns.Append "AttType", adInteger
    .Columns.Append "Magery", adInteger
    .Columns.Append "MageryLVL", adInteger
    .Columns.Append "Cap", adInteger
    .Columns.Append "MaxIncLVLs", adInteger
    .Columns.Append "MaxInc", adInteger
    .Columns.Append "MinIncLVLs", adInteger
    .Columns.Append "MinInc", adInteger
    .Columns.Append "DurIncLVLs", adInteger
    .Columns.Append "DurInc", adInteger
    
    For x = 0 To 9
        .Columns.Append CStr("Abil-" & x), adInteger
        .Columns.Append CStr("AbilVal-" & x), adInteger
    Next
    
    .Columns.Append "Learnable", adInteger
    .Columns.Append "Learned From", adVarWChar
    .Columns.Append "Casted By", adVarWChar
    
End With
catNewDB.Tables.Append tabNewSpells

DoEvents
With tabNewMonsters
    .Name = "Monsters"
    .Columns.Append "Number", adInteger
    .Columns.Append "Name", adVarWChar, 29
    .Columns.Append "Weapon", adInteger
    .Columns.Append "ArmourClass", adInteger
    .Columns.Append "DamageResist", adInteger
    .Columns.Append "Follow%", adInteger
    .Columns.Append "MagicRes", adInteger
    .Columns.Append "EXP", adDouble
    If eDatFileVersion >= v111j Then .Columns.Append "ExpMulti", adDouble
    .Columns.Append "HP", adInteger
    .Columns.Append "GreetTXT", adInteger
    .Columns.Append "HPRegen", adInteger
    .Columns.Append "CharmLVL", adInteger
    .Columns.Append "Type", adInteger
    .Columns.Append "Undead", adInteger
    .Columns.Append "Align", adInteger
    .Columns.Append "RegenTime", adInteger
    .Columns.Append "R", adInteger
    .Columns.Append "P", adInteger
    .Columns.Append "G", adInteger
    .Columns.Append "S", adInteger
    .Columns.Append "C", adInteger
    .Columns.Append "DeathSpell", adInteger
    .Columns.Append "CreateSpell", adInteger

    For x = 0 To 4
        .Columns.Append CStr("AttType-" & x), adInteger
        .Columns.Append CStr("AttAcc-" & x), adInteger
        .Columns.Append CStr("Att%-" & x), adInteger
        .Columns.Append CStr("AttMin-" & x), adInteger
        .Columns.Append CStr("AttMax-" & x), adInteger
        .Columns.Append CStr("AttEnergy-" & x), adInteger
        .Columns.Append CStr("AttHitSpell-" & x), adInteger
    Next
    
    For x = 0 To 4
        .Columns.Append CStr("MidSpell-" & x), adInteger
        .Columns.Append CStr("MidSpell%-" & x), adInteger
        .Columns.Append CStr("MidSpellLVL-" & x), adInteger
    Next
    
    For x = 0 To 9
        .Columns.Append CStr("DropItem-" & x), adInteger
        '.Columns.Append CStr("DropItemUses-" & x), adInteger
        .Columns.Append CStr("DropItem%-" & x), adInteger
    Next
    
    For x = 0 To 9
        .Columns.Append CStr("Abil-" & x), adInteger
        .Columns.Append CStr("AbilVal-" & x), adInteger
    Next

    .Columns.Append "In Game", adInteger
    .Columns.Append "Summoned By", adLongVarWChar
    
End With
catNewDB.Tables.Append tabNewMonsters

DoEvents
With tabNewItems
    .Name = "Items"
    .Columns.Append "Number", adInteger
    .Columns.Append "Name", adVarWChar, 29
    .Columns.Append "Limit", adInteger
    .Columns.Append "Encum", adInteger
    .Columns.Append "ItemType", adInteger
    .Columns.Append "UseCount", adInteger
    .Columns.Append "Price", adInteger
    .Columns.Append "Currency", adInteger
    .Columns.Append "Min", adInteger
    .Columns.Append "Max", adInteger
    .Columns.Append "ArmourClass", adInteger
    .Columns.Append "DamageResist", adInteger
    .Columns.Append "WeaponType", adInteger
    .Columns.Append "ArmourType", adInteger
    .Columns.Append "Worn", adInteger
    .Columns.Append "Accy", adInteger
    .Columns.Append "Gettable", adInteger
    .Columns.Append "StrReq", adInteger
    .Columns.Append "Speed", adInteger
    .Columns.Append "Not Droppable", adInteger
    .Columns.Append "Destroy On Death", adInteger
    .Columns.Append "Retain After Uses", adInteger
    
    For x = 0 To 9
        .Columns.Append ("ClassRest-" & x), adInteger
    Next
    
    For x = 0 To 9
        .Columns.Append ("RaceRest-" & x), adInteger
    Next
    
    For x = 0 To 9
        .Columns.Append ("NegateSpell-" & x), adInteger
    Next

    For x = 0 To 19
        .Columns.Append ("Abil-" & x), adInteger
        .Columns.Append ("AbilVal-" & x), adInteger
    Next
    
    .Columns.Append "In Game", adInteger
    .Columns.Append "Obtained From", adLongVarWChar, 2000 ', adVarWChar
    
End With
catNewDB.Tables.Append tabNewItems

DoEvents
With tabNewShops
    .Name = "Shops"
    .Columns.Append "Number", adInteger
    .Columns.Append "Name", adVarWChar, 39
    .Columns.Append "ShopType", adInteger
    .Columns.Append "MinLVL", adInteger
    .Columns.Append "MaxLVL", adInteger
    .Columns.Append "Markup%", adInteger
    .Columns.Append "ClassRest", adInteger
    
    For x = 0 To 19
        .Columns.Append CStr("Item-" & x), adInteger
        .Columns.Append CStr("Max-" & x), adInteger
        .Columns.Append CStr("Time-" & x), adInteger
        .Columns.Append CStr("Amount-" & x), adInteger
        .Columns.Append CStr("%-" & x), adInteger
    Next
    
    .Columns.Append "In Game", adInteger
    .Columns.Append "Assigned To", adVarWChar

End With
catNewDB.Tables.Append tabNewShops

DoEvents
With tabNewInfo
    .Name = "Info"
    .Columns.Append "NMR Version", adVarWChar
    .Columns.Append "Dat File Version", adVarWChar
    .Columns.Append "Date", adVarWChar
    .Columns.Append "Time", adVarWChar
    .Columns.Append "Custom", adVarWChar
    .Columns.Append "Legit", adInteger
    .Columns.Append "UpdateURL", adVarWChar
End With
catNewDB.Tables.Append tabNewInfo

DoEvents
With tabNewTBInfo
    .Name = "TBInfo"
    .Columns.Append "Number", adInteger
    .Columns.Append "LinkTo", adInteger
    .Columns.Append "Action", adLongVarWChar, 2000
    .Columns.Append "Called From", adVarWChar
    '.Columns.Append "Random", adInteger
End With
'tabNewTBInfo("Action").Attributes = adColNullable
catNewDB.Tables.Append tabNewTBInfo

'-------
'index's
'-------

DoEvents
With pkSpells
    .Name = "pkSpells"
    .Type = adKeyPrimary
    .RelatedTable = "Spells"
    .Columns.Append "Number"
    .Columns("Number").RelatedColumn = "Number"
    .UpdateRule = adRINone
End With

DoEvents
With pkShops
    .Name = "pkShops"
    .Type = adKeyPrimary
    .RelatedTable = "Shops"
    .Columns.Append "Number"
    .Columns("Number").RelatedColumn = "Number"
    .UpdateRule = adRINone
End With

DoEvents
With pkMonsters
    .Name = "pkMonsters"
    .Type = adKeyPrimary
    .RelatedTable = "Monsters"
    .Columns.Append "Number"
    .Columns("Number").RelatedColumn = "Number"
    .UpdateRule = adRINone
End With

DoEvents
With pkItems
    .Name = "pkItems"
    .Type = adKeyPrimary
    .RelatedTable = "Items"
    .Columns.Append "Number"
    .Columns("Number").RelatedColumn = "Number"
    .UpdateRule = adRINone
End With

DoEvents
With pkRaces
    .Name = "pkRaces"
    .Type = adKeyPrimary
    .RelatedTable = "Races"
    .Columns.Append "Number"
    .Columns("Number").RelatedColumn = "Number"
    .UpdateRule = adRINone
End With

DoEvents
With pkClasses
    .Name = "pkClasses"
    .Type = adKeyPrimary
    .RelatedTable = "Classes"
    .Columns.Append "Number"
    .Columns("Number").RelatedColumn = "Number"
    .UpdateRule = adRINone
End With

DoEvents
With pkTBInfo
    .Name = "pkTBInfo"
    .Type = adKeyPrimary
    .RelatedTable = "TBInfo"
    .Columns.Append "Number"
    .Columns("Number").RelatedColumn = "Number"
    .UpdateRule = adRINone
End With

DoEvents
With idxRooms
    .Name = "idxRooms"
    .Columns.Append "Map Number"
    .Columns.Append "Room Number"
    .Unique = False
End With

tabNewRaces.Keys.Append pkRaces
tabNewClasses.Keys.Append pkClasses
tabNewItems.Keys.Append pkItems
tabNewMonsters.Keys.Append pkMonsters
tabNewSpells.Keys.Append pkSpells
tabNewShops.Keys.Append pkShops
tabNewTBInfo.Keys.Append pkTBInfo
tabNewRooms.Indexes.Append idxRooms

DoEvents

'------
'close
'------

Set pkRaces = Nothing
Set pkClasses = Nothing
Set pkShops = Nothing
Set pkMonsters = Nothing
Set pkSpells = Nothing
Set pkItems = Nothing
Set idxRooms = Nothing
Set pkTBInfo = Nothing

Set tabNewTBInfo = Nothing
Set tabNewInfo = Nothing
Set tabNewClasses = Nothing
Set tabNewRaces = Nothing
Set tabNewSpells = Nothing
Set tabNewShops = Nothing
Set tabNewItems = Nothing
Set tabNewMonsters = Nothing
Set tabNewRooms = Nothing

Set catNewDB = Nothing

CreateTables = True
DoEvents

Exit Function
Error:
Call HandleError
Set pkRaces = Nothing
Set pkClasses = Nothing
Set pkShops = Nothing
Set pkMonsters = Nothing
Set pkSpells = Nothing
Set pkItems = Nothing
Set idxRooms = Nothing
Set pkTBInfo = Nothing

Set tabNewTBInfo = Nothing
Set tabNewClasses = Nothing
Set tabNewRaces = Nothing
Set tabNewSpells = Nothing
Set tabNewShops = Nothing
Set tabNewItems = Nothing
Set tabNewMonsters = Nothing
Set tabNewInfo = Nothing
Set tabNewRooms = Nothing

Set catNewDB = Nothing
End Function

Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
Dim nTemp As Integer

If cmdGo.Enabled = False Then
    Cancel = 1
    Call cmdCancel_Click
    Exit Sub
End If

If bCheckSave Then
    nTemp = MsgBox("Save current config file first?", vbYesNoCancel + vbQuestion, "Save MME Config?")
    If nTemp = vbYes Then
        nTemp = SaveConfig(sConfigFile)
        If nTemp = -1 Then
            Cancel = 1
            Exit Sub
        End If
    ElseIf nTemp = vbCancel Then
        Cancel = 1
        Exit Sub
    End If
End If

Call WriteINI("Options", "MME-ConfigFile", sConfigFile)

If Not Me.WindowState = vbMinimized Then
    Call WriteINI("Windows", "MME-Left", Me.Left)
    Call WriteINI("Windows", "MME-Top", Me.Top)
End If

Set tabMonsters = Nothing
Set tabShops = Nothing
Set tabItems = Nothing
Set tabSpells = Nothing
Set tabRaces = Nothing
Set tabClasses = Nothing
Set tabInfo = Nothing
Set tabRooms = Nothing
Set tabTBInfo = Nothing

Set DB = Nothing

Timer1.Enabled = False

End Sub

Private Function CalcTotalRecords() As Long
On Error GoTo Error:
Dim nStatus As Integer

CalcTotalRecords = 0

nStatus = BTRCALL(BSTAT, ItemPosBlock, DBStatDatabuf, Len(Itemdatabuf), 0, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then
    CalcTotalRecords = CalcTotalRecords + 2500
Else
    DBStatRowToStruct DBStatDatabuf.buf
    CalcTotalRecords = CalcTotalRecords + (DBStat.nRecords * (nPasses + 2)) 'containers
End If

nStatus = BTRCALL(BSTAT, SpellPosBlock, DBStatDatabuf, Len(Spelldatabuf), 0, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then
    CalcTotalRecords = CalcTotalRecords + 15000
Else
    DBStatRowToStruct DBStatDatabuf.buf
    CalcTotalRecords = CalcTotalRecords + (DBStat.nRecords * (nPasses + 1))
End If

nStatus = BTRCALL(BSTAT, ShopPosBlock, DBStatDatabuf, Len(Shopdatabuf), 0, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then
    CalcTotalRecords = CalcTotalRecords + 3000
Else
    DBStatRowToStruct DBStatDatabuf.buf
    CalcTotalRecords = CalcTotalRecords + (DBStat.nRecords * 2)
End If

nStatus = BTRCALL(BSTAT, MonsterPosBlock, DBStatDatabuf, Len(Monsterdatabuf), 0, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then
    CalcTotalRecords = CalcTotalRecords + 15000
Else
    DBStatRowToStruct DBStatDatabuf.buf
    CalcTotalRecords = CalcTotalRecords + (DBStat.nRecords * (nPasses + 2)) 'greets
End If

nStatus = BTRCALL(BSTAT, RacePosBlock, DBStatDatabuf, Len(Racedatabuf), 0, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then
    CalcTotalRecords = CalcTotalRecords + 30
Else
    DBStatRowToStruct DBStatDatabuf.buf
    CalcTotalRecords = CalcTotalRecords + DBStat.nRecords
End If

nStatus = BTRCALL(BSTAT, ClassPosBlock, DBStatDatabuf, Len(Classdatabuf), 0, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then
    CalcTotalRecords = CalcTotalRecords + 30
Else
    DBStatRowToStruct DBStatDatabuf.buf
    CalcTotalRecords = CalcTotalRecords + DBStat.nRecords
End If

nStatus = BTRCALL(BSTAT, RoomPosBlock, DBStatDatabuf, Len(Roomdatabuf), 0, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then
    CalcTotalRecords = CalcTotalRecords + 50000
Else
    DBStatRowToStruct DBStatDatabuf.buf
    CalcTotalRecords = CalcTotalRecords + (DBStat.nRecords * _
        IIf(chkLegit.Value = 0 And chkNoRooms.Value = 1 And chkExcludeRooms.Value = 1, 1, 2))
End If

nStatus = BTRCALL(BSTAT, TextblockPosBlock, DBStatDatabuf, Len(TextblockDataBuf), 0, KEY_BUF_LEN, 0)
If Not nStatus = 0 Then
    CalcTotalRecords = CalcTotalRecords + 20000
Else
    DBStatRowToStruct DBStatDatabuf.buf
    CalcTotalRecords = CalcTotalRecords + (DBStat.nRecords * (nPasses + 3)) 'chests, tb commands
End If

If CalcTotalRecords <= 0 Then CalcTotalRecords = 100000
'If CalcTotalRecords > 32767 Then CalcTotalRecords = 32767

Exit Function

Error:
Call HandleError
End Function

Private Sub OpenTables()
On Error GoTo Error:

Set tabItems = DB.OpenRecordset("Items")
Set tabClasses = DB.OpenRecordset("Classes")
Set tabRaces = DB.OpenRecordset("Races")
Set tabSpells = DB.OpenRecordset("Spells")
Set tabMonsters = DB.OpenRecordset("Monsters")
Set tabShops = DB.OpenRecordset("Shops")
Set tabInfo = DB.OpenRecordset("Info")
Set tabRooms = DB.OpenRecordset("Rooms")
Set tabTBInfo = DB.OpenRecordset("TBInfo")

Exit Sub
Error:
Call HandleError
Resume Next
End Sub
Private Sub CloseDB(Optional DontCompact As Boolean)
On Error Resume Next
Dim temp As String
Dim fso As FileSystemObject

tabItems.Close
tabSpells.Close
tabRaces.Close
tabClasses.Close
tabInfo.Close
tabMonsters.Close
tabShops.Close
tabRooms.Close
tabTBInfo.Close

DB.Close

If DontCompact Then GoTo NoCompact:

lblPanel(0).Caption = ""
lblPanel(1).Caption = "Compacting Database ..."
DoEvents
On Error GoTo NoCompact:
Set fso = CreateObject("Scripting.FileSystemObject")

temp = sDataSource & "_temp.mdb"
Call CompactDatabase(sDataSource, temp)

If fso.FileExists(temp) Then
    fso.DeleteFile sDataSource
    fso.CopyFile temp, sDataSource
    fso.DeleteFile temp, True
End If

NoCompact:
On Error Resume Next
lblPanel(1).Caption = ""

finish:
Set fso = Nothing
DoEvents
End Sub

Private Sub IncreaseProgressBar()
On Error Resume Next

If nScale > 0 Then
    If nScaleCount = nScale Then
        If ProgressBar.Value + 1 < ProgressBar.Max Then ProgressBar.Value = ProgressBar.Value + 1
        nScaleCount = 1
    Else
        nScaleCount = nScaleCount + 1
    End If
Else
    If ProgressBar.Value + 1 < ProgressBar.Max Then ProgressBar.Value = ProgressBar.Value + 1
End If

End Sub


Private Sub Timer1_Timer()
DoEvents
End Sub

Private Sub txtCustom_GotFocus()
Call SelectAll(txtCustom)

End Sub

Private Sub txtDBVersion_GotFocus()
Call SelectAll(txtDBVersion)

End Sub

Private Sub txtMap_GotFocus()
Call SelectAll(txtMap)

End Sub

Private Sub txtMap_KeyPress(KeyAscii As Integer)
KeyAscii = NumberKeysOnly(KeyAscii)
End Sub

Private Sub txtUpdateURL_Change()
bCheckSave = True
End Sub

Private Sub txtUpdateURL_GotFocus()
Call SelectAll(txtUpdateURL)

End Sub
