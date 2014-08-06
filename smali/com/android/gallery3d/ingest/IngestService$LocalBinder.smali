.class public Lcom/android/gallery3d/ingest/IngestService$LocalBinder;
.super Landroid/os/Binder;
.source "IngestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ingest/IngestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ingest/IngestService;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ingest/IngestService;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/gallery3d/ingest/IngestService$LocalBinder;->this$0:Lcom/android/gallery3d/ingest/IngestService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/android/gallery3d/ingest/IngestService;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ingest/IngestService$LocalBinder;->this$0:Lcom/android/gallery3d/ingest/IngestService;

    return-object v0
.end method
