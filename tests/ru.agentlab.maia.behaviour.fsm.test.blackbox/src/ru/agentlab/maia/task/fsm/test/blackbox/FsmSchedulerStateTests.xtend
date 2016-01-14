package ru.agentlab.maia.task.fsm.test.blackbox

import org.junit.Ignore
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.InjectMocks
import org.mockito.Spy
import org.mockito.runners.MockitoJUnitRunner
import ru.agentlab.maia.IBehaviour
import ru.agentlab.maia.behaviour.fsm.BehaviourSchedulerFsm
import ru.agentlab.maia.event.IMaiaEventBroker

import static org.mockito.Mockito.*

@RunWith(MockitoJUnitRunner)
class FsmSchedulerStateTests {

//	@Mock
//	IMaiaContext context
//
//	@Mock
//	IMaiaContextInjector injector
	@Spy @InjectMocks
	BehaviourSchedulerFsm scheduler = new BehaviourSchedulerFsm(mock(IMaiaEventBroker))

	@Test
	def void shouldBeUnknownWhenConstructed() {
//		assertThat(scheduler.state, equalTo(State.UNKNOWN))
	}

	@Test
	def void shouldBeInstalledWhenDeployToContext() {
//		when(context.getServiceLocal(IMaiaContextInjector)).thenReturn(injector)
//		when(injector.invoke(scheduler, PostConstruct, null)).thenAnswer [
//			(scheduler as AbstractExecutionNode).init
//			return null
//		]
//		when(injector.deploy(scheduler)).thenAnswer [
////			(scheduler as AbstractExecutionNode).init
//			return null
//		]
//		injector.deploy(scheduler)
//		assertThat(scheduler.state, equalTo(ITask.STATE_READY))
	}

	@Test @Ignore
	def void shouldBeActiveWhenHaveTransitionChain() {
		val child = mock(IBehaviour)
//		(scheduler as AbstractExecutionNode).init
//		assertThat(scheduler.state, equalTo(ITask.STATE_READY))
		scheduler.addChild(child)
		scheduler.addBehaviourTransition(null, child)
		scheduler.addBehaviourTransition(child, null as IBehaviour)

//		assertThat(scheduler.state, equalTo(ITask.STATE_WORKING))
	}

	@Test @Ignore
	def void shouldNotChangeStateWhenAddTransition() {
		val child = mock(IBehaviour)
//		(scheduler as AbstractExecutionNode).init
//		assertThat(scheduler.state, equalTo(ITask.STATE_READY))
		scheduler.addChild(child)
		scheduler.addBehaviourTransition(null, child)

//		assertThat(scheduler.state, equalTo(ITask.STATE_READY))
	}

	@Test @Ignore
	def void shouldNotIncreaseStateWhenAddChild() {
		val child = mock(IBehaviour)
//		(scheduler as AbstractExecutionNode).init
//		assertThat(scheduler.state, equalTo(ITask.STATE_READY))
		scheduler.addChild(child)

//		assertThat(scheduler.state, equalTo(ITask.STATE_READY))
	}
}
