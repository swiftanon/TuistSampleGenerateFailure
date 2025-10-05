import ProjectDescription

let project = Project(
    name: "Sample",
    targets: [
        .target(
            name: "Sample",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.Sample",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            buildableFolders: [
                "Sample/Sources",
                "Sample/Resources",
            ],
            dependencies: []
        ),
        .target(
            name: "SampleTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "dev.tuist.SampleTests",
            infoPlist: .default,
            buildableFolders: [
                "Sample/Tests"
            ],
            dependencies: [.target(name: "Sample")]
        ),
    ]
)
