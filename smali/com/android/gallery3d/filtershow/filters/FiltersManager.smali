.class public Lcom/android/gallery3d/filtershow/filters/FiltersManager;
.super Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;
.source "FiltersManager.java"


# static fields
.field private static sHighresInstance:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

.field private static sInstance:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

.field private static sPreviewInstance:Lcom/android/gallery3d/filtershow/filters/FiltersManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-object v0, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->sInstance:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    .line 32
    sput-object v0, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->sPreviewInstance:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    .line 33
    sput-object v0, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->sHighresInstance:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->init()V

    .line 37
    return-void
.end method

.method public static getHighresManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->sHighresInstance:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->sHighresInstance:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    .line 57
    :cond_0
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->sHighresInstance:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    return-object v0
.end method

.method public static getManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->sInstance:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->sInstance:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    .line 50
    :cond_0
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->sInstance:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    return-object v0
.end method

.method public static getPreviewManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->sPreviewInstance:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->sPreviewInstance:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    .line 43
    :cond_0
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->sPreviewInstance:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    return-object v0
.end method

.method public static reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 179
    sput-object v0, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->sInstance:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    .line 180
    sput-object v0, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->sPreviewInstance:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    .line 181
    sput-object v0, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->sHighresInstance:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    .line 182
    return-void
.end method

.method public static setResources(Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 185
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->setFilterResources(Landroid/content/res/Resources;)V

    .line 186
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getPreviewManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->setFilterResources(Landroid/content/res/Resources;)V

    .line 187
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getHighresManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->setFilterResources(Landroid/content/res/Resources;)V

    .line 188
    return-void
.end method


# virtual methods
.method public addBorders(Landroid/content/Context;Ljava/util/Vector;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "representations":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;>;"
    const/16 v4, 0x10

    .line 103
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 120
    .local v0, "ids":[I
    new-array v3, v4, [I

    fill-array-data v3, :array_1

    .line 139
    .local v3, "strID":[I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 140
    aget v4, v3, v1

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "s":Ljava/lang/String;
    aget v4, v0, v1

    invoke-virtual {p0, v2, v4}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->buildFrame(Ljava/lang/String;I)Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    return-void

    .line 103
    nop

    :array_0
    .array-data 4
        0x7f0a01ee
        0x7f0a01ef
        0x7f0a01f0
        0x7f0a01f1
        0x7f0a01f2
        0x7f0a01f3
        0x7f0a01f4
        0x7f0a01f5
        0x7f0a01f6
        0x7f0a01f7
        0x7f0a01f8
        0x7f0a01f9
        0x7f0a01fa
        0x7f0a01fb
        0x7f0a01fc
        0x7f0a01fd
    .end array-data

    .line 120
    :array_1
    .array-data 4
        0x7f0b010c
        0x7f0b010d
        0x7f0b010e
        0x7f0b010f
        0x7f0b0110
        0x7f0b0111
        0x7f0b0112
        0x7f0b0113
        0x7f0b0114
        0x7f0b0115
        0x7f0b0116
        0x7f0b0117
        0x7f0b0118
        0x7f0b0119
        0x7f0b011a
        0x7f0b011b
    .end array-data
.end method

.method public addEffects(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 158
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 159
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 160
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 162
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 163
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 164
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHighlights;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 165
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVibrance;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 166
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 168
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 169
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 170
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 171
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 172
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method protected addFilterClasses(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->addFilterClasses(Ljava/util/Vector;)V

    .line 71
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 72
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 76
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public addLooks(Landroid/content/Context;Ljava/util/Vector;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, "representations":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;>;"
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->addLooks(Landroid/content/Context;Ljava/util/Vector;)V

    .line 89
    return-void
.end method

.method public addTools(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "representations":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;>;"
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->addTools(Ljava/util/Vector;)V

    .line 151
    return-void
.end method

.method public buildFrame(Ljava/lang/String;I)Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 92
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;-><init>()V

    .line 93
    .local v0, "frame":Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;
    const v1, 0x7f0a0054

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->setEditorId(I)V

    .line 94
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->setShowUtilityPanel(Z)V

    .line 95
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->setName(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->setFrameTexture(I)V

    .line 97
    return-object v0
.end method
