# PRD Analysis Example: Mobile App Onboarding Redesign

## Input Summary

**Document Type:** PRD for mobile app onboarding flow redesign
**Stage:** Ready for engineering review
**Context:** B2C mobile app, iOS and Android, 100K MAU

**PRD Sections Provided:**
- Problem statement
- User research summary
- Proposed solution
- Success metrics (partially defined)
- User flow (happy path only)
- Open questions

---

## Skill Output

# PRD Analysis: Mobile App Onboarding v2

## Overall Assessment

**Readiness Score**: 6/10
**Recommendation**: Needs clarification before engineering can start

**Quick Summary**:
- ✅ Strong problem definition with user research backing
- ✅ Clear proposed solution with mockups
- ⚠️ Success metrics missing baselines
- ⚠️ Error handling and edge cases not documented
- ❌ Technical constraints not identified
- ❌ No rollout or A/B testing plan

**Confidence Level**: Medium-Low - Engineering would need to make assumptions in several areas

---

## Critical Issues (Must Address Before Development)

### 1. Missing Success Metric Baselines

**Problem**: PRD states "increase activation rate" and "reduce time to first action" but provides no current baselines.

**Impact**:
- Cannot measure success objectively
- No way to calculate ROI
- Unclear if improvements are meaningful (10% vs 100% improvement)

**Suggested Fix**:
Add to Success Metrics section:
```markdown
## Success Metrics

### Primary Metric: Activation Rate
- **Baseline**: Current activation rate is 34% (users completing core action within 24 hours)
- **Target**: 50% activation rate
- **Timeline**: Achieve within 30 days of full rollout
- **Measurement**: Mixpanel event tracking

### Secondary Metric: Time to First Action
- **Baseline**: Median time currently 8.5 minutes
- **Target**: Median time under 3 minutes
- **Timeline**: Measure daily during rollout
- **Measurement**: Custom analytics events

### Counter-Metrics
- Session completion rate (should not decrease)
- Day 7 retention (should not decrease)
```

**Section**: Success Metrics

---

### 2. Error Handling Not Documented

**Problem**: User flow only shows happy path. No documentation of:
- Form validation errors
- Network failures
- Account creation errors
- Permission denial scenarios (notifications, camera, etc.)

**Impact**:
- Engineering will make UI/UX decisions without PM input
- Inconsistent error handling across platforms
- Poor user experience for common failure cases

**Suggested Fix**:
Add "Error Scenarios" section:
```markdown
## Error Scenarios

### Form Validation
- **Invalid email format**: Inline error below field, "Please enter valid email"
- **Email already exists**: Inline error, "Account exists. Sign in instead?" with link
- **Weak password**: Real-time validation, clear requirements shown

### Network Failures
- **During account creation**: Retry with exponential backoff, show "Retrying..." state
- **After 3 failures**: "Unable to connect. Check connection and retry."
- **User action**: Manual retry button

### Permission Denials
- **Notification permission denied**: Continue onboarding, show value prop for notifications later
- **Camera permission denied**: Skip profile photo step, allow adding later in settings

### API Errors
- **500 server error**: Generic error, retry button, support contact
- **400 validation error**: Display server-provided error message
```

**Section**: User Stories & Flows

---

### 3. No Technical Constraints or Dependencies

**Problem**: PRD does not mention:
- Backend readiness for new account creation flow
- Analytics event instrumentation required
- A/B testing framework needed
- Platform-specific considerations (iOS vs Android)

**Impact**:
- Unknown dependencies could delay launch
- Backend work might not be scoped
- May discover breaking constraints mid-development

**Suggested Fix**:
Add "Technical Constraints & Dependencies" section:
```markdown
## Technical Constraints

### Backend Dependencies
- [ ] New `/v2/onboarding/signup` endpoint needed (Backend team, Sprint 23)
- [ ] Analytics events must be instrumented for each step (Data team, Sprint 22)
- [ ] A/B testing flag configured in LaunchDarkly (Eng, Sprint 22)

### Platform Considerations
- **iOS**: Use native Sign in with Apple (required by App Store)
- **Android**: Google Sign-In optional but recommended
- **Shared**: Email/password must work on both

### Third-Party Services
- **Auth0**: Existing integration, no changes needed
- **Mixpanel**: New events required (see analytics plan)
- **Intercom**: In-app messages for onboarding tips

### Performance Requirements
- Each onboarding step must load in <1 second on 3G
- Total flow completion time budget: <2 minutes
```

**Section**: Add new "Technical Constraints" section

---

## Important Gaps (Should Address)

### 1. Unclear Rollout Strategy

**Problem**: PRD doesn't specify how this will be rolled out:
- All users at once?
- Gradual rollout (percentage-based)?
- A/B test (control vs new flow)?
- Regional rollout?

**Impact**:
- Risk of breaking onboarding for all users
- Can't validate improvements before full launch
- No fallback if new flow underperforms

**Suggestion**:
Add rollout plan:
```markdown
## Rollout Plan

### Phase 1: A/B Test (Weeks 1-2)
- 10% of new users see new flow (treatment)
- 90% see current flow (control)
- Success criteria: Activation rate +15% vs control
- Decision point: If successful, proceed to Phase 2

### Phase 2: Gradual Rollout (Weeks 3-4)
- Increase to 50% new flow
- Monitor metrics daily
- Rollback capability maintained

### Phase 3: Full Rollout (Week 5)
- 100% new users see new flow
- Remove old flow code after 30 days stable

### Rollback Triggers
- Activation rate drops below current baseline
- Critical bugs affecting >5% of users
- App store rating drops below 4.0
```

---

### 2. Missing Accessibility Considerations

**Problem**: No mention of accessibility requirements for onboarding flow.

**Impact**:
- May not meet WCAG AA standards
- Could exclude users with disabilities
- Potential App Store rejection

**Suggestion**:
Add accessibility requirements:
```markdown
## Accessibility Requirements

### WCAG 2.1 AA Compliance
- [ ] Color contrast 4.5:1 minimum for all text
- [ ] Form labels properly associated
- [ ] Error messages announced by screen readers
- [ ] Keyboard navigation support (Android)
- [ ] VoiceOver/TalkBack tested

### Platform-Specific
- **iOS**: VoiceOver hints for each input
- **Android**: TalkBack descriptions clear and concise
- **Both**: Text scaling support (up to 200%)
```

---

### 3. No Definition of "Out of Scope"

**Problem**: Unclear what is explicitly NOT included in this project.

**Impact**:
- Scope creep risk
- Unclear boundaries for engineering
- Stakeholder misalignment

**Suggestion**:
Add "Out of Scope" section:
```markdown
## Explicitly Out of Scope

**Not in this release:**
- Social login (Facebook, Twitter) - Deferred to Q2
- Email verification flow - Using existing flow
- Onboarding tutorial/tips - Separate initiative
- Profile completion wizard - Phase 2 feature
- Referral code support - Future consideration

**Why**: Focus on core activation improvement first, then layer on additional features based on data.
```

---

## Suggestions (Nice to Have)

### 1. Add User Quotes

**Observation**: Research summary mentions user feedback but doesn't include actual quotes.

**Benefit**: Quotes bring research to life and build empathy with engineering team.

**Suggestion**:
```markdown
## User Research Highlights

"I downloaded the app but couldn't figure out what to do first. Deleted it after 2 minutes."
— Sarah, 28, Trial user who churned

"The signup took forever. Asked for too much upfront."
— Marcus, 35, Activation survey respondent

"I wanted to see the app before committing to an account."
— Emily, 42, User interview
```

---

### 2. Consider Adding Visual Flow Diagram

**Observation**: Text-based user flow is clear but could be enhanced with visual.

**Benefit**: Easier for stakeholders to review, catches flow issues visually.

**Suggestion**: Include Figma flow diagram or Miro board link showing:
- Screen-to-screen flow
- Decision points
- Error states
- Success/failure paths

---

## What Works Well

✅ **Problem Definition**: Excellent grounding in user research data
- Specific user pain points identified
- Research methodology clearly described
- Sample size and participant profiles included

✅ **Proposed Solution**: Clear and well-explained
- Mockups included for all main screens
- Rationale for each design decision provided
- Comparative analysis vs current flow

✅ **Open Questions Section**: Honest about unknowns
- Specific questions identified
- Owners assigned for resolution
- Decision deadlines noted

---

## Next Steps

### Before Engineering Kickoff (Priority Order):

1. **[Critical]** Add success metric baselines and targets
   - Owner: PM
   - Deadline: Before sprint planning
   - Estimated effort: 2 hours (pull data from analytics)

2. **[Critical]** Document error scenarios and edge cases
   - Owner: PM + Designer collaboration
   - Deadline: Before sprint planning
   - Estimated effort: 4 hours

3. **[Critical]** Identify technical constraints and dependencies
   - Owner: PM + Engineering Lead
   - Deadline: During refinement meeting
   - Estimated effort: 1 hour discussion

4. **[Important]** Define rollout and testing plan
   - Owner: PM + Growth Lead
   - Deadline: Before dev starts
   - Estimated effort: 2 hours

5. **[Important]** Add accessibility requirements
   - Owner: Designer
   - Deadline: Before dev starts
   - Estimated effort: 1 hour

6. **[Important]** Clarify out-of-scope items
   - Owner: PM
   - Deadline: Before stakeholder review
   - Estimated effort: 30 minutes

**Total estimated effort to address gaps**: ~10 hours

---

## Ready for Engineering After:

- [ ] Critical issues #1-3 addressed
- [ ] Important gaps #1-2 addressed (rollout plan, accessibility)
- [ ] Stakeholder sign-off on updated PRD
- [ ] Engineering lead review of technical constraints

**Estimated time to "ready"**: 1 week (1 refinement cycle)

---

## Example Review Notes

**What This Example Shows:**

1. **Structured Format**: Clear categorization (Critical/Important/Nice-to-have)
2. **Specific Fixes**: Not just "add metrics" but exact template for how to add them
3. **Impact-Focused**: Every issue explains WHY it matters
4. **Actionable**: Next steps with owners, deadlines, effort estimates
5. **Balanced**: Acknowledges what's done well, not just problems
6. **Educational**: Explains best practices, doesn't just criticize

**Customization Tips:**

- Adjust readiness threshold (6/10) to your team's standards
- Add/remove evaluation criteria based on your PRD template
- Modify criticality levels based on your process (some teams can start dev with open questions)
- Include company-specific requirements (compliance, security, etc.)

**Common Adaptations:**

- **B2B products**: Add enterprise considerations, procurement requirements
- **Regulated industries**: Add compliance checkpoints, audit trails
- **Early-stage startups**: Lighter requirements, faster iteration
- **Enterprise teams**: Heavier documentation, more stakeholder sign-offs