.class Lcom/android/camera/ActivityBase$MyAppBridge;
.super Lcom/android/gallery3d/app/AppBridge;
.source "ActivityBase.java"

# interfaces
.implements Lcom/android/camera/CameraScreenNail$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAppBridge"
.end annotation


# instance fields
.field private mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field private mServer:Lcom/android/gallery3d/app/AppBridge$Server;

.field final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Lcom/android/gallery3d/app/AppBridge;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ActivityBase$MyAppBridge;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 517
    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase$MyAppBridge;->switchWithCaptureAnimation(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ActivityBase$MyAppBridge;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 517
    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase$MyAppBridge;->setCameraRelativeFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ActivityBase$MyAppBridge;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 517
    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase$MyAppBridge;->setSwipingEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/ActivityBase$MyAppBridge;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/android/camera/ActivityBase$MyAppBridge;->notifyScreenNailChanged()V

    return-void
.end method

.method private notifyScreenNailChanged()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0}, Lcom/android/gallery3d/app/AppBridge$Server;->notifyScreenNailChanged()V

    .line 585
    :cond_0
    return-void
.end method

.method private setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/AppBridge$Server;->setCameraRelativeFrame(Landroid/graphics/Rect;)V

    .line 573
    :cond_0
    return-void
.end method

.method private setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/AppBridge$Server;->setSwipingEnabled(Z)V

    .line 581
    :cond_0
    return-void
.end method

.method private switchWithCaptureAnimation(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/AppBridge$Server;->switchWithCaptureAnimation(I)Z

    .line 577
    :cond_0
    return-void
.end method


# virtual methods
.method public attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Lcom/android/camera/CameraScreenNail;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraScreenNail;-><init>(Lcom/android/camera/CameraScreenNail$Listener;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    return-object v0
.end method

.method public detachScreenNail()V
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 532
    return-void
.end method

.method public getCameraScreenNail()Lcom/android/camera/CameraScreenNail;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    return-object v0
.end method

.method public isPanorama()Z
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isPanoramaActivity()Z

    move-result v0

    return v0
.end method

.method public onFullScreenChanged(Z)V
    .locals 1
    .parameter "full"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    #calls: Lcom/android/camera/ActivityBase;->onFullScreenChanged(Z)V
    invoke-static {v0, p1}, Lcom/android/camera/ActivityBase;->access$800(Lcom/android/camera/ActivityBase;Z)V

    .line 549
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->onPreviewTextureCopied()V

    .line 559
    return-void
.end method

.method public onSingleTapUp(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    #calls: Lcom/android/camera/ActivityBase;->onSingleTapUp(II)Z
    invoke-static {v0, p1, p2}, Lcom/android/camera/ActivityBase;->access$700(Lcom/android/camera/ActivityBase;II)Z

    move-result v0

    return v0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestRender()V

    .line 554
    return-void
.end method

.method public setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/camera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    .line 564
    return-void
.end method
