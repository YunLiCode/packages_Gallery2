.class Lcom/android/gallery3d/ingest/IngestActivity$3;
.super Landroid/database/DataSetObserver;
.source "IngestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ingest/IngestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ingest/IngestActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ingest/IngestActivity;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/gallery3d/ingest/IngestActivity$3;->this$0:Lcom/android/gallery3d/ingest/IngestActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestActivity$3;->this$0:Lcom/android/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/android/gallery3d/ingest/IngestActivity;->mPagerAdapter:Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;
    invoke-static {v0}, Lcom/android/gallery3d/ingest/IngestActivity;->access$1000(Lcom/android/gallery3d/ingest/IngestActivity;)Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestActivity$3;->this$0:Lcom/android/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/android/gallery3d/ingest/IngestActivity;->mPagerAdapter:Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;
    invoke-static {v0}, Lcom/android/gallery3d/ingest/IngestActivity;->access$1000(Lcom/android/gallery3d/ingest/IngestActivity;)Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->notifyDataSetChanged()V

    .line 314
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestActivity$3;->this$0:Lcom/android/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/android/gallery3d/ingest/IngestActivity;->mPagerAdapter:Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;
    invoke-static {v0}, Lcom/android/gallery3d/ingest/IngestActivity;->access$1000(Lcom/android/gallery3d/ingest/IngestActivity;)Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestActivity$3;->this$0:Lcom/android/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/android/gallery3d/ingest/IngestActivity;->mPagerAdapter:Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;
    invoke-static {v0}, Lcom/android/gallery3d/ingest/IngestActivity;->access$1000(Lcom/android/gallery3d/ingest/IngestActivity;)Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->notifyDataSetChanged()V

    .line 319
    :cond_0
    return-void
.end method
