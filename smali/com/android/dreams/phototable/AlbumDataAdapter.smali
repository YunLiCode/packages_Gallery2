.class public Lcom/android/dreams/phototable/AlbumDataAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AlbumDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dreams/phototable/AlbumDataAdapter$1;,
        Lcom/android/dreams/phototable/AlbumDataAdapter$ItemClickListener;,
        Lcom/android/dreams/phototable/AlbumDataAdapter$TitleComparator;,
        Lcom/android/dreams/phototable/AlbumDataAdapter$RecencyComparator;,
        Lcom/android/dreams/phototable/AlbumDataAdapter$AccountComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayout:I

.field private final mListener:Lcom/android/dreams/phototable/AlbumDataAdapter$ItemClickListener;

.field private final mSettings:Lcom/android/dreams/phototable/AlbumSettings;

.field private final mValidAlbumIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;ILjava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Landroid/content/SharedPreferences;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/SharedPreferences;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/android/dreams/phototable/PhotoSource$AlbumData;>;"
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 51
    invoke-static {p2}, Lcom/android/dreams/phototable/AlbumSettings;->getAlbumSettings(Landroid/content/SharedPreferences;)Lcom/android/dreams/phototable/AlbumSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mSettings:Lcom/android/dreams/phototable/AlbumSettings;

    .line 52
    iput p3, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mLayout:I

    .line 53
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    new-instance v2, Lcom/android/dreams/phototable/AlbumDataAdapter$ItemClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/dreams/phototable/AlbumDataAdapter$ItemClickListener;-><init>(Lcom/android/dreams/phototable/AlbumDataAdapter;Lcom/android/dreams/phototable/AlbumDataAdapter$1;)V

    iput-object v2, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mListener:Lcom/android/dreams/phototable/AlbumDataAdapter$ItemClickListener;

    .line 56
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mValidAlbumIds:Ljava/util/HashSet;

    .line 57
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .line 58
    .local v0, "albumData":Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    iget-object v2, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mValidAlbumIds:Ljava/util/HashSet;

    iget-object v3, v0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v0    # "albumData":Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    :cond_0
    iget-object v2, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mSettings:Lcom/android/dreams/phototable/AlbumSettings;

    iget-object v3, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mValidAlbumIds:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Lcom/android/dreams/phototable/AlbumSettings;->pruneObsoleteSettings(Ljava/util/Collection;)V

    .line 61
    return-void
.end method

.method static synthetic access$100(Lcom/android/dreams/phototable/AlbumDataAdapter;)Lcom/android/dreams/phototable/AlbumSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/AlbumDataAdapter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mSettings:Lcom/android/dreams/phototable/AlbumSettings;

    return-object v0
.end method


# virtual methods
.method public areAllSelected()Z
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mSettings:Lcom/android/dreams/phototable/AlbumSettings;

    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mValidAlbumIds:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/AlbumSettings;->areAllEnabled(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    move-object v2, p2

    .line 84
    .local v2, "item":Landroid/view/View;
    if-nez v2, :cond_0

    .line 85
    iget-object v6, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mLayout:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/AlbumDataAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .line 89
    .local v1, "data":Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    const v6, 0x7f0a006e

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 90
    .local v4, "vCheckBox":Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v6, v4, Landroid/widget/CheckBox;

    if-eqz v6, :cond_1

    move-object v0, v4

    .line 91
    check-cast v0, Landroid/widget/CheckBox;

    .line 92
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/AlbumDataAdapter;->isSelected(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 93
    const v6, 0x7f0a001e

    invoke-virtual {v0, v6, v1}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    .line 96
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_1
    const v6, 0x7f0a0064

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 97
    .local v5, "vTextView":Landroid/view/View;
    if-eqz v5, :cond_2

    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    move-object v3, v5

    .line 98
    check-cast v3, Landroid/widget/TextView;

    .line 99
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v6, v1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_2
    iget-object v6, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mListener:Lcom/android/dreams/phototable/AlbumDataAdapter$ItemClickListener;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-object v2
.end method

.method public isSelected(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/AlbumDataAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .line 65
    .local v0, "data":Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mSettings:Lcom/android/dreams/phototable/AlbumSettings;

    iget-object v2, v0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/dreams/phototable/AlbumSettings;->isAlbumEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public selectAll(Z)V
    .locals 2
    .param p1, "select"    # Z

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mSettings:Lcom/android/dreams/phototable/AlbumSettings;

    iget-object v1, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mValidAlbumIds:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/AlbumSettings;->enableAllAlbums(Ljava/util/Collection;)V

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/android/dreams/phototable/AlbumDataAdapter;->notifyDataSetChanged()V

    .line 79
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/dreams/phototable/AlbumDataAdapter;->mSettings:Lcom/android/dreams/phototable/AlbumSettings;

    invoke-virtual {v0}, Lcom/android/dreams/phototable/AlbumSettings;->disableAllAlbums()V

    goto :goto_0
.end method
