.class public Lcom/android/gallery3d/filtershow/editors/ParametricEditor;
.super Lcom/android/gallery3d/filtershow/editors/Editor;
.source "ParametricEditor.java"


# static fields
.field public static ID:I

.field static landscapeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field static portraitMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field mActionButton:Landroid/view/View;

.field protected mControl:Lcom/android/gallery3d/filtershow/controller/Control;

.field mEditControl:Landroid/view/View;

.field private mLayoutID:I

.field private mViewID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const v0, 0x7f0a005a

    sput v0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->ID:I

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->landscapeMap:Ljava/util/HashMap;

    .line 59
    sget-object v0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    const-string v1, "ParameterInteger"

    const-class v2, Lcom/android/gallery3d/filtershow/controller/BasicSlider;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->landscapeMap:Ljava/util/HashMap;

    const-string v1, "ParameterInteger"

    const-class v2, Lcom/android/gallery3d/filtershow/controller/TitledSlider;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    const-string v1, "ParameterActionAndInt"

    const-class v2, Lcom/android/gallery3d/filtershow/controller/ActionSlider;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->landscapeMap:Ljava/util/HashMap;

    const-string v1, "ParameterActionAndInt"

    const-class v2, Lcom/android/gallery3d/filtershow/controller/ActionSlider;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    const-string v1, "ParameterStyles"

    const-class v2, Lcom/android/gallery3d/filtershow/controller/StyleChooser;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->landscapeMap:Ljava/util/HashMap;

    const-string v1, "ParameterStyles"

    const-class v2, Lcom/android/gallery3d/filtershow/controller/StyleChooser;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->ID:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/Editor;-><init>(I)V

    .line 50
    const-string v0, "ParametricEditor"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->LOGTAG:Ljava/lang/String;

    .line 77
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/Editor;-><init>(I)V

    .line 50
    const-string v0, "ParametricEditor"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->LOGTAG:Ljava/lang/String;

    .line 81
    return-void
.end method

.method protected constructor <init>(III)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "layoutID"    # I
    .param p3, "viewID"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/Editor;-><init>(I)V

    .line 50
    const-string v0, "ParametricEditor"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->LOGTAG:Ljava/lang/String;

    .line 85
    iput p2, p0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->mLayoutID:I

    .line 86
    iput p3, p0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->mViewID:I

    .line 87
    return-void
.end method

.method static useCompact(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 132
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 133
    .local v1, "w":Landroid/view/WindowManager;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 134
    .local v0, "size":Landroid/graphics/Point;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 135
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-ge v3, v4, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v2

    .line 138
    :cond_1
    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x258

    if-lt v3, v4, :cond_0

    .line 141
    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x320

    if-lt v3, v4, :cond_0

    .line 144
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public calculateUserMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "effectName"    # Ljava/lang/String;
    .param p3, "parameterValue"    # Ljava/lang/Object;

    .prologue
    .line 91
    const-string v0, ""

    .line 93
    .local v0, "apply":Ljava/lang/String;
    iget-byte v2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mShowParameter:B

    sget-byte v3, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->SHOW_VALUE_INT:B

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->useCompact(Landroid/content/Context;)Z

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    instance-of v2, v2, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    .line 96
    .local v1, "interval":Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getStateRepresentation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .end local v1    # "interval":Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    :goto_1
    return-object v0

    .line 93
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 98
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 101
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected control(Lcom/android/gallery3d/filtershow/controller/Parameter;Landroid/view/View;)V
    .locals 9
    .param p1, "p"    # Lcom/android/gallery3d/filtershow/controller/Parameter;
    .param p2, "editControl"    # Landroid/view/View;

    .prologue
    .line 175
    invoke-interface {p1}, Lcom/android/gallery3d/filtershow/controller/Parameter;->getParameterType()Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "pType":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 177
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->useCompact(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    :goto_0
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 179
    .local v0, "c":Ljava/lang/Class;
    if-eqz v0, :cond_2

    .line 181
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/filtershow/controller/Control;

    iput-object v6, p0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->mControl:Lcom/android/gallery3d/filtershow/controller/Control;

    .line 182
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->mControl:Lcom/android/gallery3d/filtershow/controller/Control;

    invoke-interface {p1, v6}, Lcom/android/gallery3d/filtershow/controller/Parameter;->setController(Lcom/android/gallery3d/filtershow/controller/Control;)V

    .line 183
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->mControl:Lcom/android/gallery3d/filtershow/controller/Control;

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "editControl":Landroid/view/View;
    invoke-interface {v6, p2, p1, p0}, Lcom/android/gallery3d/filtershow/controller/Control;->setUp(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/Parameter;Lcom/android/gallery3d/filtershow/editors/Editor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    :goto_1
    return-void

    .line 177
    .end local v0    # "c":Ljava/lang/Class;
    .restart local p2    # "editControl":Landroid/view/View;
    :cond_1
    sget-object v6, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->landscapeMap:Ljava/util/HashMap;

    goto :goto_0

    .line 184
    .end local p2    # "editControl":Landroid/view/View;
    .restart local v0    # "c":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 185
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "ParametricEditor"

    const-string v7, "Error in loading Control "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 188
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p2    # "editControl":Landroid/view/View;
    :cond_2
    const-string v6, "ParametricEditor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find class for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v6, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 190
    .local v5, "string":Ljava/lang/String;
    const-string v6, "ParametricEditor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " use "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 109
    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->mViewID:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->mLayoutID:I

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->unpack(II)V

    .line 110
    return-void
.end method

.method protected getParameterToEdit(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Lcom/android/gallery3d/filtershow/controller/Parameter;
    .locals 1
    .param p1, "rep"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 148
    instance-of v0, p0, Lcom/android/gallery3d/filtershow/controller/Parameter;

    if-eqz v0, :cond_0

    .line 149
    check-cast p0, Lcom/android/gallery3d/filtershow/controller/Parameter;

    .line 153
    .end local p0    # "this":Lcom/android/gallery3d/filtershow/editors/ParametricEditor;
    .end local p1    # "rep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :goto_0
    return-object p0

    .line 150
    .restart local p0    # "this":Lcom/android/gallery3d/filtershow/editors/ParametricEditor;
    .restart local p1    # "rep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_0
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/controller/Parameter;

    if-eqz v0, :cond_1

    .line 151
    check-cast p1, Lcom/android/gallery3d/filtershow/controller/Parameter;

    .end local p1    # "rep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    move-object p0, p1

    goto :goto_0

    .line 153
    .restart local p1    # "rep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "sbar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 197
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 201
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 205
    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 115
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    instance-of v1, v1, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    .line 118
    .local v0, "interval":Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->mControl:Lcom/android/gallery3d/filtershow/controller/Control;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/filtershow/controller/Control;->setPrameter(Lcom/android/gallery3d/filtershow/controller/Parameter;)V

    .line 120
    .end local v0    # "interval":Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    :cond_0
    return-void
.end method

.method public setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "actionButton"    # Landroid/view/View;
    .param p2, "editControl"    # Landroid/view/View;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->mActionButton:Landroid/view/View;

    .line 159
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->mEditControl:Landroid/view/View;

    .line 160
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    .line 161
    .local v2, "rep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->getParameterToEdit(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Lcom/android/gallery3d/filtershow/controller/Parameter;

    move-result-object v1

    .line 162
    .local v1, "param":Lcom/android/gallery3d/filtershow/controller/Parameter;
    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {p0, v1, p2}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->control(Lcom/android/gallery3d/filtershow/controller/Parameter;Landroid/view/View;)V

    .line 172
    .end local p2    # "editControl":Landroid/view/View;
    :goto_0
    return-void

    .line 165
    .restart local p2    # "editControl":Landroid/view/View;
    :cond_0
    new-instance v3, Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    .line 166
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 168
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    check-cast p2, Landroid/widget/LinearLayout;

    .end local p2    # "editControl":Landroid/view/View;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_0
.end method
