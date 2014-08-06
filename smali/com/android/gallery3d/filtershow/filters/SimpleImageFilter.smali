.class public Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "SimpleImageFilter.java"


# instance fields
.field private mParameters:Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 5

    .prologue
    .line 24
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    const-string v1, "Default"

    const/4 v2, 0x0

    const/16 v3, 0x32

    const/16 v4, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;-><init>(Ljava/lang/String;III)V

    .line 25
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setShowParameterValue(Z)V

    .line 26
    return-object v0
.end method

.method public getParameters()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    return-object v0
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 1
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 30
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    .line 31
    .local v0, "parameters":Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    .line 32
    return-void
.end method
