#include <wx/wx.h>

class MyApp : public wxApp {
public:
    virtual bool OnInit();
};

class MyFrame : public wxFrame {
public:
    MyFrame(const wxString& title);

    void OnQuit(wxCommandEvent& event);
};

enum {
    ID_Quit = 1
};

wxIMPLEMENT_APP(MyApp);  // Dies ist das Makro, das die main()-Funktion bereitstellt

bool MyApp::OnInit() {
    MyFrame* frame = new MyFrame("Hello wxWidgets");
    frame->Show(true);
    return true;
}

MyFrame::MyFrame(const wxString& title)
    : wxFrame(NULL, wxID_ANY, title) {

    wxMenu* menuFile = new wxMenu;
    menuFile->Append(ID_Quit, "E&xit\tAlt-X", "Quit this program");

    wxMenuBar* menuBar = new wxMenuBar();
    menuBar->Append(menuFile, "&File");

    SetMenuBar(menuBar);

    Bind(wxEVT_MENU, &MyFrame::OnQuit, this, ID_Quit);
}

void MyFrame::OnQuit(wxCommandEvent& WXUNUSED(event)) {
    Close(true);
}
