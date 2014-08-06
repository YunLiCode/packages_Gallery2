.class Lcom/google/android/pano/widget/ScrollAdapterView$1;
.super Landroid/database/DataSetObserver;
.source "ScrollAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/ScrollAdapterView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 0

    .prologue
    .line 789
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$1;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$1;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->fireDataSetChanged()V
    invoke-static {v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$500(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    .line 794
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$1;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->fireDataSetChanged()V
    invoke-static {v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$500(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    .line 799
    return-void
.end method
