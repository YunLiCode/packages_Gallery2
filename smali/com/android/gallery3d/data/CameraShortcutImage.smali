.class public Lcom/android/gallery3d/data/CameraShortcutImage;
.super Lcom/android/gallery3d/data/ActionImage;
.source "CameraShortcutImage.java"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 1
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;
    .param p2, "application"    # Lcom/android/gallery3d/app/GalleryApp;

    .prologue
    .line 27
    const v0, 0x7f02019e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/data/ActionImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public getSupportedOperations()I
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Lcom/android/gallery3d/data/ActionImage;->getSupportedOperations()I

    move-result v0

    const v1, 0x8000

    or-int/2addr v0, v1

    return v0
.end method
