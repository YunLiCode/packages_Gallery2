.class Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;
.super Ljava/lang/Object;
.source "WidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Lcom/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/gadget/WidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoRVFactory"
.end annotation


# instance fields
.field private final mAlbumPath:Ljava/lang/String;

.field private final mApp:Lcom/android/gallery3d/app/GalleryApp;

.field private final mAppWidgetId:I

.field private mSource:Lcom/android/gallery3d/gadget/WidgetSource;

.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;IILjava/lang/String;)V
    .locals 0
    .param p1, "app"    # Lcom/android/gallery3d/app/GalleryApp;
    .param p2, "id"    # I
    .param p3, "type"    # I
    .param p4, "albumPath"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    .line 64
    iput p2, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAppWidgetId:I

    .line 65
    iput p3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mType:I

    .line 66
    iput-object p4, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAlbumPath:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/android/gallery3d/gadget/WidgetSource;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 95
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04000e

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 113
    .local v0, "rv":Landroid/widget/RemoteViews;
    const v1, 0x7f0a0077

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 114
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const v4, 0x7f0a0079

    .line 119
    iget-object v2, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v2, p1}, Lcom/android/gallery3d/gadget/WidgetSource;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 128
    :goto_0
    return-object v1

    .line 121
    :cond_0
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040010

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 124
    .local v1, "views":Landroid/widget/RemoteViews;
    invoke-virtual {v1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 125
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v3, p1}, Lcom/android/gallery3d/gadget/WidgetSource;->getContentUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAppWidgetId:I

    const v2, 0x7f0a007a

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 141
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 71
    iget v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 72
    new-instance v0, Lcom/android/gallery3d/gadget/MediaSetSource;

    iget-object v1, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAlbumPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/gadget/MediaSetSource;-><init>(Lcom/android/gallery3d/data/DataManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v0, p0}, Lcom/android/gallery3d/gadget/WidgetSource;->setContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAppWidgetId:I

    const v2, 0x7f0a007a

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 80
    return-void

    .line 74
    :cond_0
    new-instance v0, Lcom/android/gallery3d/gadget/LocalPhotoSource;

    iget-object v1, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/gadget/LocalPhotoSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    goto :goto_0
.end method

.method public onDataSetChanged()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/android/gallery3d/gadget/WidgetSource;->reload()V

    .line 134
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/android/gallery3d/gadget/WidgetSource;->close()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    .line 86
    return-void
.end method
