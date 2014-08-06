.class public abstract Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;
.super Ljava/lang/Object;
.source "BaseFiltersManager.java"


# instance fields
.field protected mFilters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Lcom/android/gallery3d/filtershow/filters/ImageFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addBorders(Landroid/content/Context;Ljava/util/Vector;)V
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
    .line 117
    .local p2, "representations":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;>;"
    return-void
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
    .line 152
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 153
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 154
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 155
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 156
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 157
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 158
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHighlights;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 159
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVibrance;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 160
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 161
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 162
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 163
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 164
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 165
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterNegative;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 166
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterEdge;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 167
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterKMeans;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 168
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
    .line 91
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 93
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 94
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 95
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 96
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 97
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 98
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHighlights;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 99
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVibrance;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 100
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 101
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 103
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 104
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 105
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 106
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterNegative;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 107
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterEdge;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 108
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterKMeans;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 109
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 110
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 111
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 112
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public addLooks(Landroid/content/Context;Ljava/util/Vector;)V
    .locals 7
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
    const/16 v4, 0x9

    .line 120
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 132
    .local v0, "drawid":[I
    new-array v2, v4, [I

    fill-array-data v2, :array_1

    .line 144
    .local v2, "fxNameid":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 145
    new-instance v1, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;

    aget v4, v2, v3

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aget v5, v0, v3

    aget v6, v2, v3

    invoke-direct {v1, v4, v5, v6}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;-><init>(Ljava/lang/String;II)V

    .line 147
    .local v1, "fx":Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;
    invoke-virtual {p2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "fx":Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;
    :cond_0
    return-void

    .line 120
    :array_0
    .array-data 4
        0x7f02009e
        0x7f020099
        0x7f02009d
        0x7f02009b
        0x7f02009a
        0x7f0200a0
        0x7f02009c
        0x7f0200a1
        0x7f02009f
    .end array-data

    .line 132
    :array_1
    .array-data 4
        0x7f0b020f
        0x7f0b020a
        0x7f0b020e
        0x7f0b020c
        0x7f0b020b
        0x7f0b0211
        0x7f0b020d
        0x7f0b0212
        0x7f0b0210
    .end array-data
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
    .line 173
    .local p1, "representations":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;>;"
    return-void
.end method

.method public freeFilterResources(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 5
    .param p1, "preset"    # Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .prologue
    .line 69
    if-nez p1, :cond_1

    .line 79
    :cond_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getUsedFilters(Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;)Ljava/util/Vector;

    move-result-object v3

    .line 73
    .local v3, "usedFilters":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/filters/ImageFilter;>;"
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 74
    .local v0, "c":Ljava/lang/Class;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 75
    .local v1, "filter":Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v3, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 76
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->freeResources()V

    goto :goto_0
.end method

.method public freeRSFilterScripts()V
    .locals 4

    .prologue
    .line 82
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 83
    .local v0, "c":Ljava/lang/Class;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 84
    .local v1, "filter":Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;

    if-eqz v3, :cond_0

    .line 85
    check-cast v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;

    .end local v1    # "filter":Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->resetScripts()V

    goto :goto_0

    .line 88
    .end local v0    # "c":Ljava/lang/Class;
    :cond_1
    return-void
.end method

.method public getFilter(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 1
    .param p1, "c"    # Ljava/lang/Class;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    return-object v0
.end method

.method public getFilterForRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 2
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    return-object v0
.end method

.method public getRepresentation(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 2
    .param p1, "c"    # Ljava/lang/Class;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 62
    .local v0, "filter":Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    .line 65
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected init()V
    .locals 6

    .prologue
    .line 31
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    .line 32
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 33
    .local v3, "filters":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Class;>;"
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->addFilterClasses(Ljava/util/Vector;)V

    .line 34
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 36
    .local v1, "filterClass":Ljava/lang/Class;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 37
    .local v2, "filterInstance":Ljava/lang/Object;
    instance-of v5, v2, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    if-eqz v5, :cond_0

    .line 38
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .end local v2    # "filterInstance":Ljava/lang/Object;
    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 42
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "filterClass":Ljava/lang/Class;
    :cond_1
    return-void
.end method

.method public setFilterResources(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 176
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->getFilter(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    .line 177
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->setResources(Landroid/content/res/Resources;)V

    .line 178
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->getFilter(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    .line 179
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->setResources(Landroid/content/res/Resources;)V

    .line 180
    return-void
.end method
