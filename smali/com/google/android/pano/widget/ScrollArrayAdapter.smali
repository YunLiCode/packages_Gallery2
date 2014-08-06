.class public Lcom/google/android/pano/widget/ScrollArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ScrollArrayAdapter.java"

# interfaces
.implements Lcom/google/android/pano/widget/ScrollAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;",
        "Lcom/google/android/pano/widget/ScrollAdapter;"
    }
.end annotation


# instance fields
.field private mLayoutResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I

    .prologue
    .line 20
    .local p0, "this":Lcom/google/android/pano/widget/ScrollArrayAdapter;, "Lcom/google/android/pano/widget/ScrollArrayAdapter<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollArrayAdapter;->mLayoutResource:I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I

    .prologue
    .line 24
    .local p0, "this":Lcom/google/android/pano/widget/ScrollArrayAdapter;, "Lcom/google/android/pano/widget/ScrollArrayAdapter<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollArrayAdapter;->mLayoutResource:I

    .line 25
    iput p2, p0, Lcom/google/android/pano/widget/ScrollArrayAdapter;->mLayoutResource:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/google/android/pano/widget/ScrollArrayAdapter;, "Lcom/google/android/pano/widget/ScrollArrayAdapter<TT;>;"
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollArrayAdapter;->mLayoutResource:I

    .line 45
    iput p2, p0, Lcom/google/android/pano/widget/ScrollArrayAdapter;->mLayoutResource:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[TT;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/google/android/pano/widget/ScrollArrayAdapter;, "Lcom/google/android/pano/widget/ScrollArrayAdapter<TT;>;"
    .local p4, "objects":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollArrayAdapter;->mLayoutResource:I

    .line 35
    iput p2, p0, Lcom/google/android/pano/widget/ScrollArrayAdapter;->mLayoutResource:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/google/android/pano/widget/ScrollArrayAdapter;, "Lcom/google/android/pano/widget/ScrollArrayAdapter<TT;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollArrayAdapter;->mLayoutResource:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/google/android/pano/widget/ScrollArrayAdapter;, "Lcom/google/android/pano/widget/ScrollArrayAdapter<TT;>;"
    .local p3, "objects":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollArrayAdapter;->mLayoutResource:I

    .line 30
    return-void
.end method


# virtual methods
.method public getExpandAdapter()Lcom/google/android/pano/widget/ScrollAdapterBase;
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lcom/google/android/pano/widget/ScrollArrayAdapter;, "Lcom/google/android/pano/widget/ScrollArrayAdapter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScrapView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    .local p0, "this":Lcom/google/android/pano/widget/ScrollArrayAdapter;, "Lcom/google/android/pano/widget/ScrollArrayAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollArrayAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 51
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/pano/widget/ScrollArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    :goto_0
    return-object v1

    .line 53
    :cond_0
    iget v1, p0, Lcom/google/android/pano/widget/ScrollArrayAdapter;->mLayoutResource:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 56
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/google/android/pano/widget/ScrollArrayAdapter;->mLayoutResource:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 58
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public viewRemoved(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 65
    .local p0, "this":Lcom/google/android/pano/widget/ScrollArrayAdapter;, "Lcom/google/android/pano/widget/ScrollArrayAdapter<TT;>;"
    return-void
.end method
