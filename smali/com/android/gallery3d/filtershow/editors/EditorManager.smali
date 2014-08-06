.class public Lcom/android/gallery3d/filtershow/editors/EditorManager;
.super Ljava/lang/Object;
.source "EditorManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEditors(Lcom/android/gallery3d/filtershow/EditorPlaceHolder;)V
    .locals 1
    .param p0, "editorPlaceHolder"    # Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    .prologue
    .line 27
    new-instance v0, Lcom/android/gallery3d/filtershow/editors/EditorZoom;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/editors/EditorZoom;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 28
    new-instance v0, Lcom/android/gallery3d/filtershow/editors/EditorCurves;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/editors/EditorCurves;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 29
    new-instance v0, Lcom/android/gallery3d/filtershow/editors/EditorDrama;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 30
    new-instance v0, Lcom/android/gallery3d/filtershow/editors/EditorFilm;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/editors/EditorFilm;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 31
    new-instance v0, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/editors/EditorTuneImage;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 32
    new-instance v0, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/editors/EditorAutoCorrect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 33
    new-instance v0, Lcom/android/gallery3d/filtershow/editors/EditorDetails;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/editors/EditorDetails;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 34
    new-instance v0, Lcom/android/gallery3d/filtershow/editors/BasicEditor;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/editors/BasicEditor;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 35
    new-instance v0, Lcom/android/gallery3d/filtershow/editors/EditorVignette;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/editors/EditorVignette;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 36
    new-instance v0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 37
    new-instance v0, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/editors/EditorTiltAndShift;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 38
    new-instance v0, Lcom/android/gallery3d/filtershow/editors/EditorVintage;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/editors/EditorVintage;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 39
    new-instance v0, Lcom/android/gallery3d/filtershow/editors/EditorBlackAndWhite;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/editors/EditorBlackAndWhite;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 40
    new-instance v0, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 41
    new-instance v0, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/editors/EditorFixedFrame;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 42
    return-void
.end method
