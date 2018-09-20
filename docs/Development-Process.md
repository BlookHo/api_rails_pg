Issues are tracked in [Github Issues](https://github.com/springboardretail/springboard-retail/issues).

## Issue Types

### Feature

Label: [kind: feature](https://github.com/springboardretail/springboard-retail/labels/kind%3A%20feature)

A new feature or an enhancement to an existing feature that is customer-facing and adds value to the product. This can also include performance improvements as long as they're noticeable to the end user.

### Bug

Label: [kind: bug](https://github.com/springboardretail/springboard-retail/labels/kind%3A%20bug)

Something that's broken or not working as intended. This can include regressions (used to work, doesn't anymore), unintentional changes in behavior, or behavior that doesn't conform to the feature's spec. There can sometimes be a gray area between a story and a bug. Just use your judgement in those cases.

### Task

Label: [kind: task](https://github.com/springboardretail/springboard-retail/labels/kind%3A%20task)

Used for internal work that may or may not produce a code change. This can include customer support triage, investigations, internal technical changes, or other miscellaneous work.

### Discussion

Label: [kind: discussion](https://github.com/springboardretail/springboard-retail/labels/kind%3A%20discussion)

Used for starting discussion threads.

## Priorities

The following labels are used to define the issue priority:

1. [priority: P0 (critical)](https://github.com/springboardretail/springboard-retail/labels/priority%3A%20P0%20%28critical%29)
2. [priority: P1 (important)](https://github.com/springboardretail/springboard-retail/labels/priority%3A%20P1%20%28important%29)
3. [priority: P2](https://github.com/springboardretail/springboard-retail/labels/priority%3A%20P2)
4. [priority: P3](https://github.com/springboardretail/springboard-retail/labels/priority%3A%20P3)

Issues are prioritized in the following order:

1. Highest ranked issue assigned to me.
2. Highest ranked issue not assigned to anyone.

## Workflow

### Development

Issues read for development are labeled as [status: ready](https://github.com/springboardretail/springboard-retail/labels/status%3A%20ready), please don't work on issues without this label.

Once you start working on an issue, assign the issue to you and change the label to [status: in progress](https://github.com/springboardretail/springboard-retail/labels/status%3A%20in%20progress).

If you want to open a Pull Request that isn't ready for merging yet add `[WIP]` to the beggning of the title, this will automatically add the label [work-in-progress](https://github.com/springboardretail/springboard-retail/pulls?q=is%3Apr+is%3Aopen+label%3Awork-in-progress) to it.

When development is complete, follow [these instructions](Code-Review.md) for submitting the change for code review.

For larger changes, particularly ones that are difficult to roll back and that cannot be easily feature flagged, it's important to get early feedback from the product team before the change is merged. **NOTE:** We're working on tools to allow easily accessing an SR environment for a pull request but in the meantime, use the [instructions here](Publicly-sharing-your-dev-VM.md) to share your dev VM with the tester.
